// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Faucet is Ownable {

    using SafeMath for uint256; // sub add mul div

    // uint 256 value;
    // value = value + 1; - not safe
    // value = value.add(1); - safe

    ERC20 public token;

    struct Airdrop {
        address claimer;
        uint256 lastTimeClaimed;
    }

    // @dev address is the claimer's address
    // this address points to an Airdrop struct
    mapping ( address => Airdrop ) private tokensDroped;

    constructor(ERC20 _token) {
        require(address(_token) != address(0), "Token address can't be address zero");
        token = _token;
    }

    function depositToken(uint256 amount_) public {
        require(token.transferFrom(msg.sender, address(this), amount_), "Transaction Failed!");
        // Token transfer inside a require will revert with no gas expanses
        // if the transfer fails
    }

    function claimTokens() public {
        Airdrop memory airdrop = Airdrop({
            claimer: msg.sender,
            lastTimeClaimed: currentTime()
        });
    }

    function currentTime() private view returns (uint256) {
        return block.timestamp;
    }

}

