// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/*
There are 3 types of variables in Solidity

local
  - declared inside a function
  - not stored on the blockchain
state
  - declared outside a function
  - stored on the blockchain
global (provides information about the blockchain)
*/

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 previousBlockNumber = uint256(block.number - 1); // previous block number
        bytes32 previousBlockHash = bytes32(blockhash(previousBlockNumber)); // hash of the given block when param 'blocknumber' is one of the 256 most recent blocks; otherwise returns zero
        uint256 basefee = block.basefee; // current block's base fee.
        uint256 chainid = block.chainid; // current chain id
        address coinbase = block.coinbase; // current block miner's address
        uint256 difficulty = block.difficulty; // current block difficulty
        uint256 gasLimit = block.gaslimit; // current block gaslimit
        uint256 currentBlockNumber = block.number; // current block number
        uint256 timestamp = block.timestamp; // current block timestamp
        uint256 gasLeft = gasleft(); // remaining gas
        bytes calldata data = msg.data; // complete calldata
        address sender = msg.sender; // address of the caller
        bytes4 sig = msg.sig; // first four bytes of the calldata (i.e. function identifier)
        uint256 gasPrice = tx.gasprice; // gas price of the transaction
        address origin = tx.origin; // sender of the transaction (full call chain)
    }
}
