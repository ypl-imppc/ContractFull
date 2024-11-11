// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//base on SmartFull
contract UntrustedContract {
    uint256 private value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    // 恶意函数，仅在特定条件下返回预期值
    function maliciousFunction() public view returns (uint256) {
        if (block.timestamp % 2 == 0) {
            return value;
        } else {
            return value + 1; // 返回不同的值
        }
    }
}

contract CallerContract {
    UntrustedContract private untrustedContract;

    constructor(UntrustedContract _untrustedContract) public {
        untrustedContract = _untrustedContract;
    }

    function callUntrustedContractRepeatedly() public view returns (uint256, uint256) {
        // 重复调用不可信合约的恶意函数
        uint256 firstCallResult = untrustedContract.maliciousFunction();
        uint256 secondCallResult = untrustedContract.maliciousFunction();
        
        // 由于恶意函数的存在，两次调用可能返回不同的结果
        return (firstCallResult, secondCallResult);
    }
}