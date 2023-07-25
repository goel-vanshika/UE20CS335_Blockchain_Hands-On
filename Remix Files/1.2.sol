// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Lab_4 {
    uint public final_value;
    uint public length;
    function Mystery(uint _i) internal{
        if (_i == 0) {
            length = 0;
            final_value= 1;
        }
        uint len = 8;
        while (_i > (2 ** len) - 1) {
            len += 8;
        }
        uint len_actual = len / 8;
        uint j = 2;
        uint small = 9999;
        while (j != _i) {
            if (_i % j == 0) {
                if (j < small) {
                    small = (_i % j == 0 && j < small) ? j : small;
                }
            }
            j++;
        }
        if (small == 9999) {
            small = 0;
        }
        final_value = _i << small;
        length = len_actual;//POSITION 5
    }

    function getResult(uint var1, uint var2) public{
        uint result = var1 + var2;
        Mystery(result);
    }
    
}