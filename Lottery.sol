// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Lottery {
    address public owner;
    address payable [] public  players;

    constructor() {
        owner = msg.sender;
    }

function getbalance() public view returns (uint) {
    return address(this).balance; 
}

function getplayers() public view  returns (address payable[]  memory) {
   return players; 
}
    function enter() public payable {
        require(msg.value > .01 ether);

        // address of player entering lottery
        players.push(payable(msg.sender));
    }
    function getRandomNumber()public view returns(uint) {
        return uint(keccak256(abi.encodePacked(owner, block.timestamp)));
    }

    function pickwinner() public  {
         uint index = getRandomNumber() % players.length;
         players[index].transfer(address(this).balance);
        //  reset the  statecof the contract
        players = new address payable[](0);
    }

    modifier onlyowner() {
        require(msg.sender == owner);
        _;
    }

}
