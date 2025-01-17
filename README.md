UniversityToken ERC-20

Overview

The UniversityToken is a custom ERC-20 token contract implemented using Solidity. This contract allows for creating, transferring, and managing a token named UniversityToken (symbol: UTK) on the Ethereum blockchain. It supports essential ERC-20 functions and adds custom features like logging transaction details and retrieving transaction information.
Features

ERC-20 Token: Standard token functionality with the ability to transfer tokens between addresses.
Transaction Logging: Logs sender, receiver, amount, and timestamp for each transfer.
Transaction Information Retrieval: Functions to fetch transaction details, sender and receiver addresses.
Human-readable Timestamp: A function to retrieve the timestamp of the latest transaction in a human-readable format.
Contract Details

Token Name: UniversityToken
Token Symbol: UTK
Initial Supply: 2000 tokens
Decimals: 18 (standard for ERC-20 tokens)
Functions Implemented

1. getTransaction(uint256 index)
Retrieves transaction details (sender, receiver, amount, and timestamp) for a given transaction index.
Parameters: index (uint256) – The index of the transaction to retrieve.
Returns:
address sender – The address of the sender.
address receiver – The address of the receiver.
uint256 amount – The amount transferred.
uint256 timestamp – The timestamp of the transaction.
2. getLatestTimestamp()
Returns the timestamp of the latest transaction in a human-readable format.
Returns: A string representing the timestamp of the latest transaction.
3. getSender(uint256 index)
Retrieves the sender’s address for a given transaction index.
Parameters: index (uint256) – The index of the transaction.
Returns: address – The address of the transaction sender.
4. getReceiver(uint256 index)
Retrieves the receiver’s address for a given transaction index.
Parameters: index (uint256) – The index of the transaction.
Returns: address – The address of the transaction receiver.
Usage

Deploy the contract:
Deploy the UniversityToken contract to the desired Ethereum network (e.g., Rinkeby or Ropsten testnet).
Interact with the contract:
Use functions like transfer() to send tokens.
Use the getter functions (getTransaction(), getSender(), getReceiver(), getLatestTimestamp()) to retrieve information about past transactions.
Example of Usage:
Call getTransaction(0) to get details of the first transaction.
Call getLatestTimestamp() to get the timestamp of the latest transaction in a human-readable format.
Demo Screenshots

Include screenshots or GIFs of the contract’s interaction with Metamask or Remix here.
Examples

Example of fetching a transaction:
(uint256 sender, uint256 receiver, uint256 amount, uint256 timestamp) = getTransaction(0);
Example of getting the latest timestamp:
string memory timestamp = getLatestTimestamp();
