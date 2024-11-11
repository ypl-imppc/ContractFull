pragma solidity 0.4.24;

interface BaseInterface {
    function f1() external returns(uint);
    function f2() external returns(uint);
}

interface BaseInterface2 {
    function f3() external returns(uint);
}

contract DerivedContract_bad0 is BaseInterface, BaseInterface2 {

//DerivedContract does not implement BaseInterface.f2 or BaseInterface2.f3
    function f1() external returns(uint){
        return 42;
    }
}
