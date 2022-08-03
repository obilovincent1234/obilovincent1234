// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract purchase {
    address public seller;

    modifier onlyseller() {
        require(
            msg.sender == seller,
            "only seller can call this."
        );
        _;
    }
    function abort() public view onlyseller{
