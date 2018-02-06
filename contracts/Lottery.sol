pragma solidity 0.4.18;


/** @title Ethereum Lottery Smart Contract. */
contract Lottery {
    uint internal numTickets;
    uint internal availTickets;
    uint internal ticketPrice;
    uint internal winningAmount;
    bool internal gameStatus;
    uint internal counter;

    mapping (uint => address) internal players;

    /** @dev returns the Lotter status.
      * @return numTickets The total # of lottery tickets.
      * @return availTickets The # of available tickets.
      * @return ticketPrice The price for one lottery ticket.
      * @return gameStatus The Status of lottery game.
      * @return contractBalance The total available balance of the contract.
    */
    function getLotteryStatus() public view returns(uint, uint, uint, bool, uint) {
        return (numTickets, availTickets, ticketPrice, gameStatus, winningAmount);
    }

    /** @dev inititates the lottery game with #tickets and ticket price.
      * @param tickets - no of max tickets.
      * @param price - price of the ticket.
    */
    function startLottery(uint tickets, uint price) public payable {
        numTickets = tickets;
        ticketPrice = price;
        availTickets = numTickets - 1;
        players[++counter] = msg.sender;
        winningAmount += msg.value;
        gameStatus = true;
    }
}