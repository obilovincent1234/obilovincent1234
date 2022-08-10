// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// 3 way to send ETH
// transfer - 2300 gas, revert
// send - 2300cgas, returns bool
// call - all gas, returns bool and data

contract SendEther {
    constructor() payable {
    }

    receive() external payable {
        }
    
    function sendViaTransfer(address payable _to)  public payable {
       _to.transfer(123);
    }

    function sendViaSend(address payable _to) public payable {
       bool sent = _to.send(1234);
       require(sent, "send failed");
    }

    function sendViaCall(address payable _to) public payable {
        (bool success, ) = _to.call{value:123}("");
        require(success,"call failed");
    }
}

contract EtherReceive {
    event log(uint amount, uint gas);

    receive() external payable {
        emit log(msg.value, gasleft());
    }
}
