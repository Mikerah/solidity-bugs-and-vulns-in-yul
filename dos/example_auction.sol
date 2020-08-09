pragma solidity >=0.4.15;

//Auction susceptible to DoS attack
contract DosAuction {
  address payable currentFrontrunner;
  uint currentBid;

  //Takes in bid, refunding the frontrunner if they are outbid
  function bid() payable public {
    require(msg.value > currentBid);

    //If the refund fails, the entire transaction reverts.
    //Therefore a frontrunner who always fails will win
    if (currentFrontrunner != address(0)) {
      //E.g. if recipients fallback function is just revert()
      require(currentFrontrunner.send(currentBid));
    }

    currentFrontrunner = msg.sender;
    currentBid         = msg.value;
  }
}