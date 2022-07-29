// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/*
Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
*/

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    // you need to insert a value to _myUint when you try to deploy this contract
    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
