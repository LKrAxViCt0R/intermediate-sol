//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract MemoryTypes{

    //Storage type variables

    uint storageInteger;
    uint256 stInteger256;

    mapping(address => uint) mappingStorageInteger;

    //Memory type

    function sumOfTwo (uint num1, uint num2) public pure returns(uint){
        uint sum = num1 + num2; //num1, num2, sum are memory type variables
        return sum;
    }

}
