pragma solidity 0.4.24;

contract SigWrongPara{
    bytes32 private idHash;
    
    constructor() public payable{
        require(msg.value > 0);
        idHash = keccak256(abi.encode(msg.sender));
    }
    
    //If _id is 0x0, and part of (_hash, v, r, s) are wrong. ecrecover() return 0x0. So pass the check 
    function getMyMoney(address payable _id, bytes32 _hash, uint8 v, bytes32 r, bytes32 s) external returns(bool){
       require(_id!=0x0,'ERROR');//handle 0x0 address 
       if(_id != ecrecover(_hash, v, r, s))
            return false;
        _id.transfer(address(this).balance);
        return true;
    }
    
}