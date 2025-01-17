# Assignment 3, Part 1

## UniversityToken ERC-20

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


### Screenshots
![Снимок экрана 2025-01-17 144032](https://github.com/user-attachments/assets/73614f86-aab0-48d2-99de-cbe5ff9e5989)
![Снимок экрана 2025-01-17 184302](https://github.com/user-attachments/assets/616acaac-fe72-4e0d-b5ef-743ac16ebcb6)
![Снимок экрана 2025-01-17 183903](https://github.com/user-attachments/assets/30c160f3-32d5-4a3d-850c-ce1f10371494)
![Снимок экрана 2025-01-17 182146](https://github.com/user-attachments/assets/d5ccd8e1-f9d0-47e6-8d76-94db675f9a79)
![Снимок экрана 2025-01-17 183845](https://github.com/user-attachments/assets/7ab671bb-2450-4b6a-83d2-ce514586fe28)
![Снимок экрана 2025-01-17 185003](https://github.com/user-attachments/assets/7354da58-12c0-4eac-924d-4da7a7bb5bf2)
![Снимок экрана 2025-01-17 184736](https://github.com/user-attachments/assets/c122c694-6ad3-4d16-b871-65ec3075cb2d)
![Снимок экрана 2025-01-17 184900](https://github.com/user-attachments/assets/d00db20a-c655-4a6a-b313-00f33cf3279b)
![Снимок экрана 2025-01-17 200534](https://github.com/user-attachments/assets/bd57b118-bed7-4576-a559-36419dd4d437)
![Снимок экрана 2025-01-17 200548](https://github.com/user-attachments/assets/145611e7-3554-4e41-baa5-64ace392d5b1)
![Снимок экрана 2025-01-17 200609](https://github.com/user-attachments/assets/f2bdf5ac-7381-4397-b628-70c79dd02f2d)
![Снимок экрана 2025-01-17 200621](https://github.com/user-attachments/assets/79b9d0fc-7d47-4726-83f4-f59ac52de7d1)

Group:SE-2321
Bazarova Zarema, Seisekeeva Dariga, Zhalgassova Saniya
