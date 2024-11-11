pragma solidity ^0.8.0;
//base on SmartFull
contract SignednessOverflowExample {
    function signConversion() public pure returns (uint256) {
        int256 signedNumber = -5;
        // 这里会发生截断溢出，因为将一个有符号的负数转换为无符号的正数
        uint256 unsignedNumber = uint256(signedNumber);
        return unsignedNumber;
    }
}