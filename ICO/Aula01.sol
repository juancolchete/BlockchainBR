// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/PostDeliveryCrowdsale.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/IERC20.sol';

contract colcheteDream is Crowdsale,PostDeliveryCrowdsale{
    constructor(
        uint rate,
        address payable wallet,
        IERC20 token
    ) Crowdsale(rate,wallet,token) PostDeliveryCrowdsale() public{}
}