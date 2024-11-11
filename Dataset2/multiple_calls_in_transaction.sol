// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//base on SmartFull
contract MultipleCallsExample {
    uint256 private balance;
    
    function deposit() public payable {
        balance += msg.value;
    }
    
    function withdraw(uint256 _amount) public {
        require(balance >= _amount, "Insufficient balance");
        balance -= _amount;
        (bool success,) = msg.sender.call(_amount);
//bool success = msg.sender.call{value: _amount}("");
        
require(success, "Withdrawal failed");
    }
    
    function getBalance() public view returns (uint256) {
        return balance;
    }
    
    function attack() public {
        // 假设攻击者在此之前已经存入了一些以太币
        uint256 initialBalance = getBalance();
        uint256 amountToWithdraw = initialBalance / 2;
        
        // 第一次调用withdraw函数，成功提取一半余额
        withdraw(amountToWithdraw);
        
        // 由于交易还未结束，balance的值已经更新，此时再进行一次withdraw调用可能会导致问题
        uint256 remainingBalance = getBalance(); // 这里的remainingBalance会比预期的少，因为上一次withdraw已经更改了balance的值
        withdraw(remainingBalance); // 这行可能会导致“Insufficient balance”错误，或者提取比预期更多的以太币（如果remainingBalance计算不准确）
    }
}