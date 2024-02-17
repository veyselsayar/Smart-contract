// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    bool public c = true;
	bool public d = false;
    uint8 public a = 10;
    uint16 public b = 257;
    uint256 public sum = a + b;
    uint256 public number = 3;
    int8 public a1 = 18;
    int8 public b1 = -1;
    int16 public difference = a1 - b1;
    bytes32 msg1 = "Hello World";
    string public msg2 = "Hello world hello world hello world hello world hello world";

    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
    
    
}
