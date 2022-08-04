// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Bank {
    mapping(address=> uint) public balances;

    string BankName = "export";
    address public owner;

       modifier onlyOwner() {
           require(msg.sender == owner, "only owner can call this." );
            _;
       }

       function createAcc() public payable returns(string memory){
      require(userExists[msg.sender]==false,'Account Already Created');
      if(msg.value==0){
          userAccount[msg.sender]=0;
          userExists[msg.sender]=true;
          return 'account created';
        }
          require(userExists[msg.sender]==false,'account already created');
      userAccount[msg.sender] = msg.value;
      userExists[msg.sender] = true;
      return 'account created';

    
     function bid(bytes32 ownerbid) external payable onlyOwner {

     }
    
     function deposit() public payable{
         balances[msg.sender] +=msg.value;

    function withdraw(uint _amount) public{
        require(balances[msg.sender]>= _amount, "insufficent funds");
         balances[msg.sender]-=_amount;
         (bool sent,) = msg.sender.call{value: _amount}("sent");
    }   require(sent, "falled to complete");

    function TransferAmount(address payable) public returns(string memory){
        if(msg.sender != owner) return;
         if(creator. isTokenTransferOk(Owner, newOwner)) owner = newOwner;
     }
     function send(address payable toAddress, uint256 amount) public payable returns (string memory) {
          require(amount>0, 'Enter non-zero value for withdrawal');
          require(user[msg.sender]==true, 'Account is not created');
           require(userAccount[msg.sender]>amount, 'insufficeint balance in Bank account');
           userAccount[msg.sender]=userAccount[msg.sender]-amount;
      toAddress.transfer(amount);
      return 'transfer success';
     }

     function userAccountBalance() public view returns(uint){
       return userAccount[msg.sender]
     }
      function accountExist() public view returns(bool){
   } return userExists[msg.sender];

}
