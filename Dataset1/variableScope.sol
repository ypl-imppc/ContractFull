pragma solidity 0.4.26;
//base on slither
contract C {

    function f(uint z) public returns (uint) {

       // 'z' is used pre-declaration
       // 'x' is used pre-declaration
        uint y = x + 9 + z; 
        uint x = 7;

        if (z % 2 == 0) {
            uint max = 5;
            
        }

        // 'max' was intended to be 5, but it was mistakenly declared in a scope and not assigned (so it is zero).
        for (uint i = 0; i < max; i++) {
            x += 1;
        }

        return x;
    }
}