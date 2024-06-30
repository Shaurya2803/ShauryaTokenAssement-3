// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";



contract ShauryaToken is ERC20 {
    address owner = msg.sender;

    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can access");
        _;
    }

    constructor(string memory name, string memory symbol) ERC20(name, symbol)  {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)

        _mint(msg.sender, 100 * 10 ** uint(decimals()));
    }

    function token_mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function Shau_transfer(address add, uint256 value) external {
        _transfer(msg.sender, add, value);
    }

    function Shau_brun(address add, uint256 value) external {
        _burn(add,value);
    }

}
