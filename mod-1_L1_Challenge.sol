//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Modifier{

    uint x;
    address admin;

    modifier onlyAdmin{
        require(msg.sender==admin);
        _;
    }

    function set(uint _x) public onlyAdmin{
        x=_x;
    }

    function get() public view onlyAdmin returns (uint){
        return x;
    }

}
