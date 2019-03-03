pragma solidity ^0.5.0;

contract Sample{
    int a = 12;
    int[] b;
    int temp = 10;
    
    constructor () public{
        while (temp < 20){
            if(temp == 17)
                break;
            else
                continue;
            temp++;
        }
        
        for (uint ii = 0; ii < b.length;ii++)
        {
            //do smt...
        }
    }
    
}