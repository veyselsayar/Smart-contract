// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract SendingEther {
    address public owner; 
    address public charity;
    constructor(address _charity){
        owner = msg.sender;
        charity = _charity;
    }
    receive() external payable{
        //receive some ether.
    }

    function tip() public payable {
        (bool s, ) = owner.call{value:msg.value}("");
        require(s);
    }
    function donate() public{
        (bool success , ) = charity.call{value:address(this).balance}("");
        require(success);
    }
}