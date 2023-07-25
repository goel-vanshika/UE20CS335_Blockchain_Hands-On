//SPDX License Identifier: GPL-3.0st 

pragma solidity ^0.8.0;


contract Test1{
    function getResult() public view returns(uint){
        uint a = 2;
        uint b = 1;
        uint result= a - b;
        return result;

    }
    function find_res(uint p, uint q) public view returns(uint r){
        uint m = 10;
        uint n = 1;
        //uint r = m+n;
        uint r = p+q;
        return r;
    }

    uint i = 100;
    uint j = 90;
    uint public r = find_res(i,j);

    Check ch = new Check();
    uint public val = ch.trial(100);

    modifier samecode(){
        for(uint i=0;i<10;i++){
            //code1
        }
        _;
    }

    modifier samecode1(){
        for(uint j=0;j<10;j++){
            //code1
        }
        _;
    }
    address public owner=msg.sender;

    modifier validity(){
        require(owner==msg.sender,"You are not the owner.");
        _;
    }

    function fun1() public samecode samecode1 view returns (uint){
        return 10;
    }
    function fun2() public validity view returns (address){
        return msg.sender;
    }
    function fun3() public samecode samecode1 view returns (string memory){
        return "solidity";
    }
}

contract Check{
    function trial(uint x) public view returns(uint res){
        uint res = x; 
        return res;
    }
}

contract Test{
    function getResult() public view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result= a + b;
        return result;
    }
}



