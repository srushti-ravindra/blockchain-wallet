# 🏦 Blockchain Wallet Smart Contract (Solidity)

## 📌 Message
This project demonstrates a simple decentralized wallet system built using blockchain technology. It allows users to deposit Ether, withdraw funds, and check their balance securely using smart contracts without any central authority.

---

## 📌 Experiment Title
Implementation of a Decentralized Wallet System using Solidity Smart Contracts

---

## 📌 Objective
The objective of this experiment is to understand how blockchain technology and smart contracts can be used to create a secure, transparent, and decentralized wallet system for financial transactions.

---

## 📌 Tools Used
- Remix IDE
- Solidity Programming Language
- Ethereum Virtual Machine (JavaScript VM)

---

## 📌 Theory / Concept
Blockchain is a decentralized system where data is stored in blocks and cannot be modified once recorded.

In this project, a smart contract acts like a digital wallet. It stores user balances and allows secure transactions.

Key concepts used:
- **Smart Contracts**: Self-executing programs on blockchain
- **msg.sender**: Address of the user interacting with contract
- **msg.value**: Amount of Ether sent in transaction
- **Mapping**: Stores user address and balance
- **Ether & Wei**: Units of cryptocurrency (1 ETH = 10^18 Wei)

---

## 📌 Working of the System

### 1. Deployment
The smart contract is deployed using Remix IDE on a simulated blockchain environment (Remix VM).

### 2. Deposit Function
Users can deposit Ether into the contract. The amount is stored in a mapping linked to their wallet address.

### 3. Withdraw Function
Users can withdraw Ether from their balance after validation. The system checks if sufficient balance is available before allowing withdrawal.

### 4. Balance Check
Users can check their personal balance using the `getBalance()` function.

### 5. Contract Balance
The total Ether stored in the contract can be viewed using `address(this).balance`.

---

## 📌 Smart Contract Features
- Deposit Ether securely
- Withdraw funds with validation
- Individual user balance tracking
- Contract balance monitoring
- Event logging (Deposited / Withdrawn)

---

## 📌 Learning Outcome
- Understanding blockchain fundamentals
- Working with Solidity smart contracts
- Handling Ether transactions
- Using mapping and events in Solidity
- Understanding decentralized financial systems

---

## 📌 Conclusion
This experiment successfully demonstrates a decentralized wallet system using blockchain technology. It helps understand how smart contracts eliminate intermediaries and ensure secure, transparent financial transactions.

---

## 📌 Author
Student Project by Srushti Ravindra – Blockchain Experiment
