//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract TheContract{

    uint a;

    function readProduct(uint b) public view returns(uint){
        return a*b;
    }

    function calculateProduct(uint _a, uint _b) public pure returns(uint){
        return _a*_b;
    }

}
