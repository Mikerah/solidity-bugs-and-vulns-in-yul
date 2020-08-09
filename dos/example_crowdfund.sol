pragma solidity >=0.4.15;

contract CrowdFundBad {
  address payable[] private refundAddresses;
  mapping(address=> uint) public refundAmount;

  function refundDos() public {
    for(uint i; i < refundAddresses.length; i++) {
      refundAddresses[i].transfer(refundAmount[refundAddresses[i]]);
    }
  }
}