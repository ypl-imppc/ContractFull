pragma solidity ^0.8.0;

//base on SmartFull
contract CallstackAttackExample {
    uint256 public counter;

    function vulnerableFunction() public {
        // 模拟一个递归调用，会导致调用堆栈深度增加
        recursiveCall(0);
    }

    function recursiveCall(uint256 depth) private {
        // 当深度达到一定程度时停止递归调用
        if (depth >= 1000) {
            return;
        }
        
        // 增加计数器
        counter++;
        
        // 递归调用自身
        recursiveCall(depth + 1);
    }
}