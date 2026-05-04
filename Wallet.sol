// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {

    // Stores balance of each user
    mapping(address => uint256) private balances;

    // Events (good for logging + marks)
    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    // Deposit Ether into contract
    function deposit() public payable {
        require(msg.value > 0, "Send some Ether");

        balances[msg.sender] += msg.value;

        emit Deposited(msg.sender, msg.value);
    }

    // Withdraw Ether from contract
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);

        emit Withdrawn(msg.sender, amount);
    }

    // Get balance of caller
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    // Get total contract balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
