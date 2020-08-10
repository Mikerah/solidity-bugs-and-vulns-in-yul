pragma solidity >= 0.5.0 < 0.8.0;
contract Suicidal {
  address owner;
  function suicide() public returns (address) {
    require(owner == msg.sender);
    selfdestruct(owner);
  }
}
contract C is Suicidal {
  address owner;
  constructor() {
    owner = msg.sender;
  }
}