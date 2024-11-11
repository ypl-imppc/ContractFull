pragma solidity 0.4.24;
contract Assertviolation {
    address owner;
    uint state1;
    uint state2;
    function bad(uint a, uint b){
	assert(a>b);
    }

    function bad1(uint a, uint b){
	uint c = a;
	uint d = b;
	assert(d==c);
    }

    function bad2(uint a, uint b){
	uint c = a;
	uint d = b;
	assert(!(d==c));
    }

    function bad3(uint a, uint b){
	assert(state1 == state2);
    }

    function bad4(uint a, uint b){
	uint c = 5;
	assert(a+c>b);
    }

    function bad5(uint a, uint b){
	assert(a+5==b);
    }

    function bad6(uint a, uint b){
	uint c = 2;	
	assert(a + c == 3);
    }

    modifier ifowner() {
	require(msg.sender == owner);
	_;
    }

    function good1(uint a, uint b){
	uint c = a + b;
	assert(c > a && c > b);
    }

    function good(uint a, uint b) ifowner(){
	assert(a>b);
    }
}


