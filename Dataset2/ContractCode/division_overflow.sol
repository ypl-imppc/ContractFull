// SPDX-License-Identifier: MIT
//base on SmartFull
pragma solidity ^0.8.0;

contract DivisionOverflow {

 //   using SafeMath for uint256;
    uint256 public numerator;
    uint256 public denominator;
    uint256 public result;

    constructor() {
        numerator = 10**30; // A very large number
        denominator = 0; // Zero, which will cause a divide by zero error
    }

    function divide() public {
        // This will cause a runtime error because we're dividing by zero
        // However, if denominator is a very small non-zero number, it can still cause division overflow
        result = numerator / denominator;
    }

    function safeDivide() public view returns (uint256) {
        if (denominator == 0) {
           revert("Cannot divide by zero");
        }
	require(denominator != 0);
        // To prevent division overflow, we can use the mulmod function
        // Note: This is just an example, and mulmod might not be suitable for all use cases
        uint256 divisor = uint256(10)**30 / denominator; // Precompute the inverse if possible
        return numerator / divisor; // This will give incorrect results if divisor is not an accurate inverse
    }
}