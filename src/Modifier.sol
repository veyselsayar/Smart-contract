// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract Modifier{
    uint configA;
    uint configB;
    uint configC;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    function setA(uint _configA) public OnlyOwner{
        _configA = configA;
    }
    function setB(uint _configB) public OnlyOwner{
        _configB = configB;
    }
    function setC(uint _configC) public OnlyOwner{
        _configC = configC;
    }
    modifier OnlyOwner {
        require(owner == msg.sender);
        _;
    }
}