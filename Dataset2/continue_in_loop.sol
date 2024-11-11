pragma solidity ^0.4.24;

contract C {
    function f_1(uint a, uint b) public{
	uint a = 0;
	do {    
    	    continue; //bad
	    a++;
	} while(a<10);
    }

    function m_1(uint a, uint b) public{
	uint a = 0;
	uint b = 0;
	do {
    	    continue; //bad
	    b++;
	} while(a<10);
    }

}
