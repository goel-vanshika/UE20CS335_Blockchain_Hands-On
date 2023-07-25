// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract SimpleProgram
{
    //datatypes //state variables (essentailly global variable)
    uint a = 10;
    uint public b = 20; /*automatically getter function works when we put public; 
    and it's button also shows as a result of getter function
    public is used to print the values held by variables*/

    bool bool_val = true;
    string s1 = "Test";
    string public s2 = 'exam'; /*string takes more gas fee than bytes32
    final gas fee is sum of all gas fees for all lines of code*/
    bytes32 s3 = "esa";
    address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //address datatype for addr variable
    address public addr1 = 0xdD870fA1b7C4700F2BD7f44238821C26f7392148;

    uint StoredVal = 200;
    //local variables
    function getResult() public view returns(uint)
    {
        uint x = 1;
        uint y = 2;
        uint z = (StoredVal+x+y);
        return z;
    }    

    //global variables in solidity are the inbuilt functions that are already stored in the libraries
    uint public setVal;
    address public chk;
    uint public block_gas;
    uint public block_number;
    constructor()
    {
        setVal = 10;
        chk = msg.sender; //global variable msg.sender is called. if we select an address from the deployment panel, that address will get attached to this global variable
        block_gas = uint(block.gaslimit);
        block_number = uint(block.number);
    }

    uint l = 10;
    uint k = 20;
    bool public m = l<k;

    uint public s;
    uint public i=2;
    function loop_demo() public returns(uint)
    {
        while(i<10)
        {
            i++;
        }
        s = i;
        return s;
    }
}