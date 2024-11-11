// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//base on SmartFull
contract Example {
    uint256 private balance;
    
    function deposit(uint256 _amount) public {
        balance += _amount;
    }
    
    function withdraw(uint256 _amount) public {

	//require(_amount <= balance, "Insufficient balance");
        // 这里没有对_amount进行验证，恶意用户可能会输入一个大于balance的值，导致合约状态异常
        balance -= _amount;
    }
    
    function getBalance() public view returns (uint256) {
        return balance;
    }
}