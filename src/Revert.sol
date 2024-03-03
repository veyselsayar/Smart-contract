// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract Revert{
    address public owner;
    constructor() payable {
        owner = msg.sender;
        require(msg.value >= 1 ether,"You should have more than 1 ether.");
    }

    function withdraw() public {
        require(msg.sender == owner);
        payable(owner).transfer(address(this).balance);
    }
}