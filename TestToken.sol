// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

/// insufficint balance for transfer. Needed "required" but only
/// "available" available
/// @param required requested amount to transfer.
error insufficintBalance(uint256 available, uint256 required);

contract TestToken {
    mapping(address => uint) balance;

    function transfer(address to, uint256 amount) public{
        if(amount> balance[msg.sender])
        revert insufficintBalance({
          available: balance[msg.sender],
           required: amount
        });

          balance[msg.sender]-= amount
     balance[to]+= amount;
    }

}
