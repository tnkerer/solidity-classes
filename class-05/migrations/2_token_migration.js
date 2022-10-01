const Token = artifacts.require("JaumCoin");

module.exports = function (deployer) {
    deployer.deploy(Token);
};