// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DaiTokenMock is ERC20, Ownable {
    constructor() ERC20("Dai Stablecoin (DAI)", "DAI") {
        // Optionally mint some initial tokens to the owner
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint 1 million DAI
    }

    // Function to mint new tokens, restricted to the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}