/**Test cases for Ethereum Lottery Smart Contract.*/
'use strict';

const Lottery = artifacts.require('../contracts/Lottery.sol');

contract('Lottery', function (accounts) {
    let lottery;

    beforeEach(async function () {
        // Instantiate the Lotter Contract
        lottery = await Lottery.new();
    });

    describe('Contract Creation', function () {
        it('should test that the smart contract is deployed', async function () {
            // Instantiated contract's address should be of address type
            assert.equal(web3.isAddress(lottery.address), true)
        });
    });
});
