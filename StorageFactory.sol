// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public simpleStorage;

    // a function that can deploy the SimpleStorage contract
    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

}