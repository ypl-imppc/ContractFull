pragma solidity 0.4.23;

contract Uninitialized{

    address payable destination;

    function transfer() payable public{
        destination.transfer(msg.value);
    }

}
