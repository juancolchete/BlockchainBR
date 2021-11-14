pragma solidity ^0.5.0;

import 'github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol';
import 'github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol';
import 'github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol';
import 'github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Burnable.sol';

contract TesteCoin is ERC20, ERC20Detailed,ERC20Mintable {
    constructor(uint256 initialSupply) ERC20Detailed("TesteCoin", "TC", 18) public {
        _mint(msg.sender, initialSupply);
    }
}