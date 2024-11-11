pragma solidity 0.4.24;

contract Intergeroverflow{
    
    function bad() {
	uint a;
	uint b;
	uint c;
	uint d = a + b + c;
    }

    function bad1() {
	uint a;
	uint b;
	uint d = a + b + 5;
    }

    function bad2() {
	uint a;
	uint c;
	if(!(a + c >=3)) {revert();}
	uint b = a - 5;
    }

    function good5() {
	uint a;
	if(!(a>=5)) {revert();}
	uint b = a - 5;
    }

    function good4() {
	uint a;
	uint b;
	if(!((a+b+5)>=5)) {revert();}
	uint d = a + b + 5;
    }

    function good3() {
	uint a;
	uint b;
	uint d = a + b + 5;
	if(!(d>=5)) {revert();}
    }

    function good2() {
	uint a;
	uint b;
	uint d = a + b + 5;
	assert(d >= a);
    }

    function good() {
	uint a;
	uint b;
	uint c = a + b;
	if(!(c>=a&&c>=b)) {revert();}
    }

    function good1() {
	uint a;
	uint b;
	if(!(a+b>=a&&a+b>=b)) {revert();}
	uint c = a + b;
    }
}
