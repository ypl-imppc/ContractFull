pragma solidity 0.4.24;

//based on SmartFull

/*
A rare integer error is the truncation error, which occurs when a longer 
type is truncated to a shorter type, potentially resulting in a loss of 
accuracy.
*/

contract truncationError{
        
    constructor() public{
        
    }    
    
function demonstrateTruncationOverflow() public pure returns (uint8) {
        // 定义一个较大的uint256类型的数值
        uint256 largeNumber = 2**255; // 接近uint256的最大值

        // 尝试将这个数值转换为uint8类型，这里会发生截断和溢出
        uint8 truncatedNumber = uint8(largeNumber);

        // 返回截断后的数值，实际上这个值并不是我们期望的，因为它已经溢出了uint8的范围
        return truncatedNumber;
    }

}