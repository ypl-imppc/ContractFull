pragma solidity 0.4.24;
contract A{
    constructor() {
	
    }
}

contract B{
    constructor() {
	
    }
    function ceshi1() {}
}

contract B{
    constructor() {
	
    }
    function ceshi2() {}
}

contract C is B{
    constructor() {
	
    }
}

contract D is C{
    constructor() {
	
    }
}

contract E is A{
    constructor() {
	
    }
}
