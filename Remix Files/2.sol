pragma solidity ^0.8.0;

contract Contract_XYZ {
    function Set_Method(uint a1, uint a_m) public pure returns (uint[] memory) {
        uint[] memory result = new uint[](a1);
        for (uint i = 0; i < a1; i++) {
            result[i] = (i+1) * a_m;
        }
        return result;
    }
}
