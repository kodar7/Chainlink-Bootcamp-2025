// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract MyFirstToken is ERC20, Ownable {
    constructor(address recipient, address initialOwner)
        ERC20("MyFirstToken", "MFT")
        Ownable(initialOwner)
    {
        _mint(recipient, 100 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

//Token Addr: 0x30Bd3320Aea66912b166B903033179899Cdb1D19
