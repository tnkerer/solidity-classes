const Token = artifacts.require("JaumCoin");
const TokenFaucet = artifacts.require("Faucet");

module.exports = function (deployer) {
    
    deployer.deploy(Token)
    .then(() => deployer.deploy(TokenFaucet, Token.address));
    
};