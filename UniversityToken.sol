// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UniversityToken is ERC20 {
    // Struct to store transaction details
    struct Transaction {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    // Array to store all transactions
    Transaction[] public transactions;

    constructor() ERC20("UniversityToken", "UTK") {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    // Override the transfer function to log transactions
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);
        if (success) {
            transactions.push(Transaction(msg.sender, recipient, amount, block.timestamp));
        }
        return success;
    }

    // Function to retrieve transaction details
    function getTransaction(uint256 index) public view returns (
        address sender,
        address receiver,
        uint256 amount,
        uint256 timestamp
    ) {
        require(index < transactions.length, "Invalid transaction index.");
        Transaction memory txn = transactions[index];
        return (txn.sender, txn.receiver, txn.amount, txn.timestamp);
    }

    // Function to get the latest transaction timestamp in human-readable format
    function getLatestTimestamp() public view returns (string memory) {
        require(transactions.length > 0, "No transactions yet.");
        uint256 latestTimestamp = transactions[transactions.length - 1].timestamp;
        return string(abi.encodePacked("Latest transaction timestamp: ", uint2str(latestTimestamp)));
    }

    // Helper function to convert uint256 to string
    function uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) return "0";
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint256 k = length;
        while (_i != 0) {
            k = k - 1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }

    // Function to get the sender address of a transaction
    function getSender(uint256 index) public view returns (address) {
        require(index < transactions.length, "Invalid transaction index.");
        return transactions[index].sender;
    }

    // Function to get the receiver address of a transaction
    function getReceiver(uint256 index) public view returns (address) {
        require(index < transactions.length, "Invalid transaction index.");
        return transactions[index].receiver;
    }
}

