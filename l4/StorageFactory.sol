// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray; // Global variable of type SimpleStorageContract, visibility and variable name

    // a function that creates and deploys the SimpleStorage contract
    // Also keeps a running list of our deployed SimpleStorage contracts
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // Calling other functions from other contracts
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Needs Address of the Contract and ABI of contract
        // ABI tells our code how to interact with the contract- All inputs and outputs and everything you can do with the contract 
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}