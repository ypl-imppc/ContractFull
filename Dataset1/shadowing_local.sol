// base on slither
pragma solidity 0.4.24;

contract Bug {
    uint owner;

    function sensitive_function(address owner) public {
        // sensitive_function.owner shadows Bug.owner. As a result, the use of owner in sensitive_function might be incorrect.
        require(owner == msg.sender);
    }

    function alternate_sensitive_function() public {
        address owner = msg.sender;
        // ...
        require(owner == msg.sender);
    }
}