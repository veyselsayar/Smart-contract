// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";


contract Functions{
    uint public number;
    constructor (uint _number){
        number = _number;
    }
    function increment() external {
        number++; 
    }
    function add(uint y) external view returns(uint){
        return y + number;
    }
    function double(uint z) external pure returns(uint doubled){
        doubled = z * 2;
    }
    //overloading
    function multiply2(uint x, uint y) external pure returns(uint){
        return (x*y);
    }
    function multiply3(uint x, uint y, uint z ) external pure returns(uint , uint , uint){
        return ((x*y*z), (x*y),(x));
    }
}