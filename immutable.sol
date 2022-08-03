pragma solidity ^0.8.13;

contract Immutable {
    address public Immutable My _Address;
    uint public Immutable MY _UINT;

    constructor(uint _myUint) {
      MY_ADDRESS = msg.sender;
      my_UINT = _myUint;
    }
}
