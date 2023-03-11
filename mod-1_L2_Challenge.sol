//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

//Use view, pure, payable functions

contract Functions{
    
    uint x=5;
    uint balance;

    function sumOfStateVar(uint y) public view returns (uint){
        return x+y;
    }

    function addTwoNum(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function sendMoney() public payable returns (uint){
        return balance+msg.value;
    }

}
