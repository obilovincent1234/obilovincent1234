// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract MesiTransactions {
    uint256 public transactionCount = 0;

    mapping(uint256 => Transaction) public transactions;

    struct Transaction {
       uint256 id;
       string history;
       string clientAddress;
       bool status;
       string offerstatus;
       uint256 amount;
       uint256 usage;
       string usageHistory;
    }

    function setTransaction(
        string memory _history,
        string memory _clientAddress,
        bool _status,
        string memory _offerstatus
    ) public {
        transactionCount++;
        transactions[transactionCount] =Transaction(
           transactionCount,
           _history,
           _clientAddress,
           _status,
           _offerstatus,
           0,
           0,
           "{}"
        );
    }
}
