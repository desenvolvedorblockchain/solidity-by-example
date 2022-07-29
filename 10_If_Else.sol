// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/*
Solidity supports conditional statements if, else if and else.
*/

contract IfElse {
    function foo(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary_foo(uint256 _x) public pure returns (uint256) {
        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator

        return _x < 10 ? 0 : (_x < 20 ? 1 : 2);
    }
}
