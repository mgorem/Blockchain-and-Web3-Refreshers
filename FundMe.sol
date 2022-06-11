// Contract that allows people to fund collective goods
// People can send Ethereum, Polygon, Avalanche to this contract
// The owner can withdraw the funds and do whatever they want

// Gets funds from users
// Withdraw funds
//Set a minimum funding value in usd

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    function fund() public payable {
        // Set a minimum fund amount in USD
        // Contract addresses can hold funds
        require(msg.value > 1e18, "Sorry, didn't send enough."); // 1e18 == 1* 10 ** 18 == 1000000000000000000
    }

    // function withdraw() public {

    // }
}
