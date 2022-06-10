// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    // a function that can deploy the SimpleStorage contract
    // Also keeps a running list of our deployed SimpleStorage contracts
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
    }

}