pragma solidity 0.4.24;

contract CallInLoop{

    address[] destinations;

    constructor(address[] newDestinations) public{
        destinations = newDestinations;
    }

    function bad() external{
        for (uint i=0; i < destinations.length; i++){

	//If one of the destinations has a fallback function that reverts, bad will always revert.
            destinations[i].transfer(i);
        }
    }

}

