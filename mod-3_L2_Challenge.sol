//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

abstract contract TheAbstract{  //using abstract keyword after the update of solidity version 6
    function getProduct() public view virtual returns(uint);

    function getSum() public pure returns(uint){
        uint a = 10;
        uint b = 50;
        uint sum = a+b;
        return sum;
    }
}

interface TheInterface{
    function totalSupply() external returns(uint);
}

contract Challenge is TheAbstract,TheInterface{ //The contract challenge is derived from both Abstract - TheAbstract and Interface - TheInterface

    function getProduct() public pure override returns(uint){ //Implementation of the abstract contract function
        uint a= 5;
        uint b = 10;
        uint product = a*b;
        return product;
    }

    function totalSupply() public pure override returns(uint){ //Implementation of the interface function
        return 100;
    }

}


/*

pragma solidity 0.5.8;

contract Abstract{
    function getProduct() public pure returns(uint);
}

contract Derived is Abstract{
    function getProduct() public pure returns(uint){
        uint a = 10;
        uint b = 50;
        uint prod = a*b;
        return prod;
    }
}

*/
