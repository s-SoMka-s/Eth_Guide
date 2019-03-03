pragma solidity ^0.5.0;

library math{
    function addInt (int a, int b) public returns (int c){
        return a+b;
    }
}

contract Sample
{
    function data() public returns(int d)
    {
        return math.addInt(1,2);
    }
}