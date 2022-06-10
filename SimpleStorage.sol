// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0; //Solidity Version

// Defining a contract and types, visibility e.t.c
// Same to a class in Java
// Visibility types:
// External- Can't be called by the same contract, has to be called by another contract
// Public- Can be called by anybody including state variables
// Internal- Can only be called by other functions inside of this contract
// Private- Private fns and state variables, only visible for the contract they are defined in
// Visibility of state variables is automatically set to internal

//Transactions=function calls=state changes


contract SimpleStorage {

    // Types and Variables

    uint256 public favoriteNumber; // unsigned intenger of size 256 bits

    // Structs- Ways to define new types in solidity(like creating new objects)
    // A struct of type People to store a favorite number associated with certain people
     struct People {
         uint256 favoriteNumber;
         string name;
     }

    //  People public person = People({favoriteNumber: 2, name: "Orem"});

    // Arrays- A way of storing a list or a group of types or some object
    // Dynamic Array  e.g People[] public people;
    People[] public people;

    // Fixed Array e.g People[1] public people; - can only have a max of one person inside

    // === Mappings =====
    // Mapping- takes a certain key and spits out a variable that key is mapped to(like a dictionary)
    //e.g a mapping of string "Orem" is mapped to uint256 2
    mapping(string => uint256) public nameToFavoriteNumber;

    // bool favoriteBool = false;
    // string favoritestring = "String";
    // int256 favoriteInt = -5;
    // bytes32 favotiteBytes = "cat";
    // address favouriteAddress; // Example is a Metamask address

    //functions/methods- self-contained modules that will execute some task for us
    //function that stores the value of favoriteNumber and changes its value

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // Keywords that define functions that you don't have to make a transaction on

    // 1.view- means we want to read some state off the blockchain(does not make state change, hence no transaction
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // 2.Pure- Functions that purely do some type of math
    function doMath() public view {
        favoriteNumber + favoriteNumber;
    }

    // Function to add a person in the Dynamic Array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    // Information Storage in Solidity:
    // In memory- Information will only be stored during exccution of the function or contract call
    // In Storage- Data Persists even after the function excecutes

}