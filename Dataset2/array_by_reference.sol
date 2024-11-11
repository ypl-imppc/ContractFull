pragma solidity 0.4.24;
contract C {
    uint[1] public x;

    function f() public {
        setByRef(x); // can set x.
        setByValue(x); // cannot set x.
        uint test = 1 + setByValueAndReturn(x); // cannot set x.
    }

    function g() public {
        uint[1] storage y = x; //storage
        setByRef(y); // can set y.
        setByValue(y); // cannot set y.
        uint test = 1 + setByValueAndReturn(y); // cannot set y.
    }

    function setByRef(uint[1] storage arr) internal {
        arr[0] = 1;
    }

    function setByValue(uint[1] arr) public {
        arr[0] = 2;
    }

    function setByValueAndReturn(uint[1] arr) public returns(uint) {
        arr[0] = 2;
        return arr[0];
    }
}


