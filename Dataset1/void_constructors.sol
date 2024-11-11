pragma solidity 0.4.24;

contract C{


}

contract D is C{

    constructor() public C(){

    }

}
