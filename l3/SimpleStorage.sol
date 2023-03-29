// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8; // any version above 0.8.7 works!

contract SimpleStorage {
    // Types in solidity: boolean, uint, int, adddress, bytes
    // bool hasFavoriteNumber = false;
    // uint favoriteNumber = 5; // uint8, uint32, uint64, uint128, uint256
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myAddress = 0xce6CD0f51c0f04778FfdEeE997Ccd2998e4A474D;
    // bytes32 favoriteBytes = "cat";

    uint256 public favoriteNumber; //gets initialised to zero

    mapping(string => uint256) public nameToFavoriteNumber;

    // using our people object
    People[] public people;

    // Defining new types
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Basic Solidity Functions
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));

        // adding people to our mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
