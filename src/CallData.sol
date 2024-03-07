// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ICallData{
    function alert() external;
}

contract CallData{
    function sendAlert(address hero) external {
        ICallData(hero).alert();
    }
}