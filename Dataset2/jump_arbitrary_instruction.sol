pragma solidity ^0.8.0;

//base on SmartFull
contract VulnerableContract {
    uint public value;
    
    function vulnerableFunction() public {
        // 可以通过调用任意函数类型变量来执行不同的代码逻辑
        value = 100;
    }
    
    function exploit(address _target) public {
        // 使用汇编将函数类型变量 _target 指向任意地址
        assembly {
            // 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE 是 Solidity 中的无效函数指针
            // 通过改变函数类型变量 _target 的值，可以将其指向任意地址
            mstore(_target, 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)
        }
    }
}