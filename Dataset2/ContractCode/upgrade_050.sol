pragma solidity 0.5.1;
contract Test {
    
    constructor () {
        owner = msg.sender;
    }
 function bad(string _role, address _address) internal view returns (bool) {
        return keccak256("owner", _role, _address);
    }


    function () payable {}
}