pragma solidity 0.4.24;
contract C{
    address owner;

    function i_am_a_backdoor() public{
        selfdestruct(msg.sender); //bad
    }

    function selfdestruct_1() public{
        address aa = msg.sender;
        selfdestruct(msg.sender); //bad
    }


    function good_selfdestruct() public{
    	address aa = msg.sender;
    	require(aa == owner);
        selfdestruct(msg.sender);
    }
}
