//SPDX License Identifier: GPL-3.0st 

pragma solidity ^0.8.0;


contract Smth{
    function getResult() public view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result= a + b;
        return result;
    }
}
contract idk{
    function getResult() public view returns(uint){
        uint a = 2;
        uint b = 1;
        uint result= a - b;
        return result;

    }
}
