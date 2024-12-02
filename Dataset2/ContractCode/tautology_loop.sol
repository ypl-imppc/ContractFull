pragma solidity 0.4.24;
contract GreaterOrEqualToZero {
    function infiniteLoop(uint border) returns(uint ans) {
        for (uint i = border; i >= 0; i--) {
            ans += i;
        }
    }
}
