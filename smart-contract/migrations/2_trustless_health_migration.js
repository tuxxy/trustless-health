var Migrations = artifacts.require("./TrustlessHealth.sol");

module.exports = function(deployer) {
    deployer.deploy(Migrations);
};