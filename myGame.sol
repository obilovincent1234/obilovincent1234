// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract myGame {
    struct structure {
      address[];
       name = playName;
       timeStart = timeStart();
       timeEnd = timeEnd();
        maxplayer = maxplayer();
        creator = creator();
    } 
    struct structure structures;
    // struct address owner
    constructor payable{
        owner = msg.sender;
    }
}
