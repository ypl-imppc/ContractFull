pragma solidity 0.4.21;
contract Incorrectconstructor { //bad
    address owner;
    function Incorrectconstructo() {
	   owner = msg.sender;
    }

    modifier ifowner()
    {
    	require(msg.sender == owner);
    	_;
    }

    function withdrawmoney() ifowner {
	   msg.sender.transfer(address(this).balance);
    }

    function() {revert();}
}


