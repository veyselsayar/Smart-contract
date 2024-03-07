// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Escrow{
    address public beneficiary;
    address public depositor;
    address public arbiter;
    event Approved(uint);

    constructor(address _beneficiary, address _arbiter) payable{
        beneficiary = _beneficiary;
        arbiter = _arbiter;
        depositor = msg.sender;
    }
    function Approve() external{
        if(msg.sender != arbiter) revert ();
        uint balance = address(this).balance;
        (bool success , ) = beneficiary.call{value:address(this).balance}("");
        require(success);

        emit Approved(balance);

    }
}