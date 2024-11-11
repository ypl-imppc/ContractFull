pragma solidity 0.4.24;
contract incorrect_Modifier{

    address destination;
    address owner;

    mapping (address => uint) balances;

    constructor(){
        balances[msg.sender] = 0;
	owner = msg.sender;
    }

   
    modifier isowner() {
	address aa = msg.sender;
	require(owner == aa);
	_;//If lack of the "_;",the execution of the function will return to the default value, which may mislead the caller.
    }


    function test() isowner public{
        destination.send(address(this).balance);
    }
}