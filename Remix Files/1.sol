pragma solidity ^0.8.7;
 
contract Lab_4 {  
   constructor() public{      
   }
//    function getResult(uint var1, uint var2) public pure returns(uint, uint ){
//       uint result = var1 + var2;
//       return Mystery(result);
//    }
//    function Mystery(uint _i) internal pure  returns (uint, uint) {
     
//       if (_i == 0) {
//          return (0,1);
//       }
//       uint len=8;
//       while(_i > (2**len)-1)  //LOOP 1
//       {
//           len+=8;
//       }
//       uint len_actual = len/8;
//        uint j = 2;
//       uint small =9999;
//       while (j!=_i){ //LOOP2  
//         if (_i%j== 0)
//         {
//             if(j<small){  // POSITION 3
//                 small=j;
//             }
//         }
//         j++;
//       }
//       if (small==9999){  // POSITION 4
//           small=0;
//       }
//       return (_i<<small,len_actual); // POSITION 5
//    }
    // SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Lab_4 {
    uint public t;
    uint public m;
    function Mystery(uint _i) internal{
        if (_i == 0) {
            t = 0;
            m= 1;
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
        t = _i << small;
        m = len_actual;//POSITION 5
    }

    function getResult(uint var1, uint var2) public{
        uint result = var1 + var2;
        Mystery(result);
    }
}
}
