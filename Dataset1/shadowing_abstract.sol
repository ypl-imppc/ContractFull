pragma solidity ^0.6.10;

abstract contract TestAbstractContract {
    uint public a;
    uint public b;
    constructor(uint _a) internal {
		a = _a;
	}
    function get () virtual public;
}

contract C is TestAbstractContract {
    function get(uint _a) public pure override virtual returns (uint) {
        return _a;
    }
}
