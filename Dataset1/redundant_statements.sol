// This tests for redundant top-level expressions in statements.

pragma solidity 0.4.24;
contract RedundantStatementsContract {

    uint a;
    constructor() public {
        uint;
        bool;
        RedundantStatementsContract;
    }

    function test() public returns (uint) {
        uint;
        assert;
        test;
        return 777;
    }
}
