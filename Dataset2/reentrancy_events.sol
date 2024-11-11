pragma solidity 0.4.24;
contract C{


    function f() public{

    }

}


contract Test{
    event E();

    function bug(C c) public{
        c.f(); //events
        emit E();    
    }

    function ok(C c) public{
        emit E();    
        c.f();
    }
}
