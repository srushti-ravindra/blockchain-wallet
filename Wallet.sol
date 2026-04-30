// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {

    mapping(address => uint) public balance;

    // Deposit Ether into wallet
    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }

    // Check your balance
    function getBalance() public view returns (uint) {
        return balance[msg.sender];
    }

    // Withdraw Ether
    function withdraw(uint amount) public {
        require(balance[msg.sender] >= amount, "Not enough balance");

        balance[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}