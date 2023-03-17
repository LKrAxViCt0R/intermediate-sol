//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract ModOneProject{
    uint balance; //balance = 0
    uint totalGas = 10000;

    function addMoney(uint _moneyAdd) public{ //_moneyAdd=300

        uint oldBalance = balance; //oldBalance = 0
        uint newBalance = oldBalance + _moneyAdd; //newBalance = 0 + 300 so newBalance = 300

        require(newBalance >= oldBalance, "Money not added, there was some error!"); //checking money was added or not. Also 300>0

        balance = newBalance; //updating the original balance. Now balance = 300

        assert(balance >= oldBalance); //checking the original balance was updated

    }

    function withdraw(uint _moneySend) public{ //_moneySent = 150

        uint oldBalance = balance; //let balance = 0, so oldBalance = 0

        require(balance >= _moneySend, "Insufficient balance"); //0 !> 150;

        balance = balance - _moneySend;

        assert(balance <= oldBalance);
    }

    function gasUsed(uint _gasToBeUsed) public{ //_gasUsed = 150
        uint oldGas = totalGas;
        uint newGas = oldGas - _gasToBeUsed;

        if(newGas >= oldGas){

            revert("The gas was not spent, and transaction failed");
        
        }else{

            totalGas = newGas;
        
        }

    }

}
