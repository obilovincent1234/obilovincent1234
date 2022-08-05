// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Bitcoin {
    string BitcoinSysmbol = "BTC";
    string arryName = "chigozie, vincent, amaka";
    mapping(address => uint) public pendingReturns;
    mapping(address => uint) public balance;
    address public owner;

    modifier onlyOwner() {
      require(msg.sender == owner, "only owner can do this");
      _;  
    }

    function DepositCryPto() public payable {
        balance[msg.sender]+= msg.value;
    }
    function WithdrawCrypto()external returns(bool) {
        uint amount = pendingReturns[msg.sender];
       if(amount > 0) {
            pendingReturns[msg.sender] = 0;           
        }
    }  

}
