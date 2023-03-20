//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Twocalled{
    
    uint public sum;
    address public sender;

    function sumOf(uint _num1, uint _num2) public payable returns(uint){
        
        sum = _num1+_num2;

        return sum;
    }

}

contract Onecall{

    uint public sum;
    address public sender;

    function sumOf(address _contract, uint _num1, uint _num2) public payable returns(uint){

        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("sumOf(uint256, uint256)", _num1, _num2)
        );

    }

}
