pragma solidity ^0.5.0;

contract Sample1{
    function a() public{}
    function b() public{}
}

//контракт Sample2 наследует Sample1
//и переопределяет функцию b()
contract Sample2 is Sample1{
    function b() public{}
}

contract Sample3{
    constructor (int b) public{
        //do smt...
    }
}

//контракт Sample4 наследует Sample1 и Sample2,
//но контракт Sample1 - родитель для Sample2, по сути мы получаем
//лишь реализацию сущности Sample1
contract Sample4 is Sample1, Sample2{
    function a() public{}
    function c() public{
        
        //выполняем метод a() контракта Sample4
        a();
        
        //выполняем метод a() контракта Sample1
        Sample1.a();
        
        //выполняем метод Sample2.b(), потому что он последний
        //в списке родителей и перекрывает собой Sample1.b()
        b();
    }
}

//если конструктор содержит аргумент, он должен быть представлен
//в конструкторе дочернего контракта,
//но в Solidity дочерний конструктор не вызывает родительский
//конструктор, а инициализирует и копирует родителя

contract Sample5 is Sample3(122){
    
}