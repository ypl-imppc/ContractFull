pragma solidity 0.4.24;
contract Functionproblem {
    address owner;
    function bad() { //bad
		revert();
    }

    function bad1() { //bad
		owner = msg.sender;
		revert();
    }

    function bad2() { //bad
		owner = msg.sender;
		throw;
    }

    function bad3() { //bad
		throw;
    }

    function good() {
		if(owner == msg.sender) {
		    revert();
		}
    }

    function good1() {
	uint a = 0;
		while(a<10) {
		    revert();
		}
    }

    function good2() {
	uint a = 0;
		for(a;a<10;a++){
		    revert();
		}
    }
function good3() {
	uint a = 0;
		while(a<10) {
		   throw;
		}
    }
function good4() {
	uint a = 0;
		if(a<10) {
		   throw;
		}
    }
function good5() {
	uint a = 0;
		for(a;a<10;a++) {
		   throw;
		}
    }
}
