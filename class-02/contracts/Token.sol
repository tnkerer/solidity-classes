// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract JaumCoin is ERC20 {
    constructor() ERC20("JaumCoin", "JC") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    // uint256
    // By default, decimals are equal to 18

    // If I want to create 1000 Coins
    // To the EVM, this number is 1000000000000000000000
}