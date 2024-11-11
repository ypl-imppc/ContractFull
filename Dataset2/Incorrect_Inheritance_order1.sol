pragma solidity 0.5.17;
 
contract adminChecker {
 
   address admin = msg.sender;
   function roleCheck() internal view returns (bool) {
       return msg.sender == admin;
   }
}
 
contract guestChecker {
 
   address guest = msg.sender;
   function roleCheck() internal view returns (bool) {
       return msg.sender == guest;
   }
}
 
contract ownersCanKill is adminChecker, guestChecker {
 
   function kill() external{
       require(roleCheck(), "Not an Admin");
       selfdestruct(msg.sender);
   }
}