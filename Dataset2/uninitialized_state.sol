pragma solidity 0.6.2;

contract Uninitialized{

    address payable destination;

    function transfer() payable public{
        destination.transfer(msg.value);
    }

}
