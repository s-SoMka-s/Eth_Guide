pragma solidity ^0.5.0;

contract Sample1{
    int a;
    
    function assign(int b) public{
        a = b;
    }
}

contract sample2{
    constructor () public{
        //создание экземпляра контракта Sample1
        Sample1 s = new Sample1();
        //вызов функции контракта Sample1
        s.assign(12);
    }
}


