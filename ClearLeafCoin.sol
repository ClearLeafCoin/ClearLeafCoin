// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the OpenZeppelin ERC20 and Ownable contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ClearLeafCoin is ERC20, Ownable {
    // Total Supply (100 million tokens with 18 decimal places)
    uint256 private constant _totalSupply = 100000000 * (10 ** 18);

    // Constructor to initialize the ERC20 token with name and symbol, and mint the total supply to the owner's address
    constructor() ERC20("ClearLeafCoin", "CLF") Ownable(0xf41b199Ca639Cd21dbe0A93a6865dE0F0691FDFD) {
        // Mint total supply to the owner's address (deployer address)
        _mint(0xf41b199Ca639Cd21dbe0A93a6865dE0F0691FDFD, _totalSupply);
    }

    // Public function to get the total supply of tokens (from ERC20)
    function getTotalSupply() public pure returns (uint256) {
        return _totalSupply;
    }
}