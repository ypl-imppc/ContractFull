pragma solidity 0.6.2;

contract Initializable{
      modifier initializer() {
          _;
      }
}

contract Buggy is Initializable{
    address payable owner;

    function initialize() external initializer{
        require(owner == address(0));
        owner = msg.sender;
    }
    function kill() external{
        require(msg.sender == owner);
        selfdestruct(owner);
    }
}

contract Fixed is Initializable{
    address payable owner;

    constructor() public{
        owner = msg.sender;
    }

    function initialize() external initializer{
        require(owner == address(0));
        owner = msg.sender;
    }
    function kill() external{
        require(msg.sender == owner);
        selfdestruct(owner);
    }

    function other_function() external{

    }
}