//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Fall{
    uint n;

    function set(uint value) external{
        n=value;
    }

    function () external payable{
        n=0;
    }

}

contract CallFall{
    function callFall(fall a) public returns (bool){
        (bool success,) = address(a).call(abi.encodeWithSignature("setter()"));
        repair(success);

        address payable payableA = address(uint160(address(a)));
        return (payableA.send(2 ether));
    }
}

contract Payable{
    address payable public owner;

    constructor () payable{
        owner = payable(msg.sender);
    }

    function deposit() public payable{}
    
}
