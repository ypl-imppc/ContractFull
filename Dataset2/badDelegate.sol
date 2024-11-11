pragma solidity 0.4.24;

//based on swc


contract Proxy {
  address public owner;

  constructor() public payable{
    owner = msg.sender;  
    require(msg.value > 0);
  }
  
  modifier onlyOwner{
      require(msg.sender == owner);
      _;
  }
  
  //If use delegatecall, this may be  a great danger. 
  function forward(address callee, bytes memory data) public {
    callee.delegatecall(data);
  }
  
  function withdraw() external{
      require(msg.sender == owner);
      msg.sender.transfer(address(this).balance);
  }
}
