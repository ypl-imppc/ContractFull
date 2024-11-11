pragma solidity ^0.8.0;
//base on SmartFull

contract ModuloOverflowExample {
    function moduloOverflow(uint256 a, uint256 b) public pure returns (uint256) {
        // 当b为0时，会导致除以0错误
        require(b != 0, "Divide by zero error");
        
        // 这里进行了取模运算，但如果a的值超过了uint256的最大值，会导致溢出
        return a % b;
    }
}