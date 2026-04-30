// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {

    address public owner;

    mapping(address => uint) public balance;

    // Event logging (important upgrade)
    event Deposited(address indexed user, uint amount);
    event Withdrawn(address indexed user, uint amount);

    constructor() {
        owner = msg.sender;
    }

    // Deposit Ether
    function deposit() public payable {
        require(msg.value > 0, "Send some Ether");

        balance[msg.sender] += msg.value;

        emit Deposited(msg.sender, msg.value);
    }

    // Withdraw Ether
    function withdraw(uint amount) public {
        require(balance[msg.sender] >= amount, "Insufficient balance");

        balance[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);

        emit Withdrawn(msg.sender, amount);
    }

    // Check user balance
    function getBalance() public view returns (uint) {
        return balance[msg.sender];
    }

    // Contract total balance (NEW UPGRADE)
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
