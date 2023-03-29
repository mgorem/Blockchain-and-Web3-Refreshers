// SPDX-License-Identifier: MIT

// Contract should:
// Get funds from users
// Withdraw Funds(only by the one who deployed)
// Set a minimum funding value in USD

pragma solidity ^0.8.8;

contract FundMe {
    function fund() public payable {
        // Set a minimum fund amount in USD
        // How to send eth to this contract
        // How much value someone is sending to the contract use: msg.value();
        require(msg.value > 1e18, "Didn't send enough!");
        // 1e18 = 1 * 10 ** 18 == 1000000000000000000 wei
    }

    // function withdraw() {}
}
