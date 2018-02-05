var Lottery = artifacts.require("../contracts/Lottery.sol");

module.exports = function (deployer) {
    deployer.deploy(Lottery);
};
