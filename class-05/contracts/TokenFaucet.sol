// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Faucet is Ownable {

    using SafeMath for uint256; // sub add mul div

    // uint 256 value;
    // value = value + 1; - not safe - naive
    // value = value.add(1); - safe

    ERC20 public token;

    struct Airdrop {
        address claimer;
        uint256 lastTimeClaimed;
    } // use did this because there is a 16 local variables limitation in solidity

    event tokenAirdropped(address indexed claimer, uint256 claimTime);

    // There can only be 3 indexed variables in an event

    // @dev address is the claimer's address
    // this address points to an Airdrop struct
    mapping ( address => Airdrop ) private tokensDroped;
    // before the pointer = argument of the mapper tokesDroped
    // after the pointer = Type of variable stored

    // tokensDroped[] - is like an array 
    // tokensDroped[address]

    constructor(ERC20 _token) {
        require(address(_token) != address(0), "Token address can't be address zero");
        token = _token;
    }

    function depositToken(uint256 amount_) public {
        require(token.transferFrom(msg.sender, address(this), amount_), "Transaction Failed!");
        // Token transfer inside a require will revert with no gas expanses
        // if the transfer fails
    }

    // If a user tries to claim tokens within a 24 hour spam, the claimTokens method should fail
    function claimTokens() public {
        require( currentTime() > tokensDroped[msg.sender].lastTimeClaimed.add(86400) , "User claimed less than 24hrs ago");
        // 24 * 60 = 1440 min
        // 1440 min * 60 = 86400 sec
        // REMEMBER: Do unit test using mocha for *days* native variable
        
        Airdrop memory _airdrop = Airdrop({
            claimer: msg.sender, // msg.sender is the person claiming the token
            lastTimeClaimed: currentTime() // register last time msg.sender claimed a token
        });

        tokensDroped[msg.sender] = _airdrop;

        require(token.transfer(msg.sender, 10 ether), "Token Transfer Failed!"); // Is the same of - token.trasnferFrom(this(address), msg.sender, 10 ether)
        emit tokenAirdropped(msg.sender, _airdrop.lastTimeClaimed);
    }

    function currentTime() private view returns (uint256) {
        return block.timestamp;
        // 352697412 - unix timestamp
        // 2021-05-25 17:00:00 - human readable
    }
}

