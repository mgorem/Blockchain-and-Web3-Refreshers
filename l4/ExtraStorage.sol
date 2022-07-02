// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Use virtual in the main function in the first contract
// Use override in the second function that overrides the initial one
// Inherits all the functions of the SimpleStorage contract
contract ExtraStorage is SimpleStorage {
    // overriding functions using  virtual and override
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}