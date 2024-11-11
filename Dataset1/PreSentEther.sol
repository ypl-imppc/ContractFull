pragma solidity 0.4.24;

//from Jiuzhou

//line 20

contract PreSentEther{
    address public owner;
    uint256 public money;
    constructor() public{
        owner = msg.sender;
        money = 0;
    }
    
    
    function depositOnce() external payable{
        //An attacker can force ethers to an address. If the deployment address of your contract can be predicted, and the contract assumes the initial balance of 0, then the attacker can interfere with your contract by sending ethers in advance.

        //require(address(this).balance == 0);

        money += msg.value;
    }
    
    function withdraw() external{
        require(msg.sender == owner);
        msg.sender.transfer(money);
    }
}