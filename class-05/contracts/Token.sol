// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; // Step 1: Import a new contract

contract JaumCoin is ERC20, Ownable { // Step 2: Make the main contract inherit from the new contract

    constructor() ERC20("JaumCoin", "JC") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address account, uint256 amount) external onlyOwner { // Step 3: Use Methods or Modifiers from new Contract
        // if ( totalSupply() > 2000 * 10 ** decimals()) 
        // return
        require(totalSupply() > 2000 * 10 ** decimals(), "Mint amount is higher than total supply (2000)");
        // OBS: It is not possible to compare Strings inside a require

        _mint(account, amount * 10 ** decimals());
    }

    function burn(address account, uint256 amount) external onlyOwner {
        _burn(account, amount * 10 ** decimals());
    }
    
}