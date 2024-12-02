pragma solidity 0.3.24;

contract Redundant_fallback {

uint[3] uintArray;
function assgin() public {
    int8[3] memory memIntArray;
    memIntArray = [-1, -2, -3];
  }
//The lack of fallback-function
//function ()payable{}

}
