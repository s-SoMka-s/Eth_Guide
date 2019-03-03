pragma solidity ^0.5.0;

contract Functions{
    //свойства контракта
    //public - могут быть доступны любыми способами
    //private - похожи не internal, но не доступны для наследующих контрактов
    //internal - доступны только внутри текущего контракта
    //external - вызов только из другого контракта или через транзакцию
    uint public a;
    function sample() public{
        //do smt...
    }
    
    //fallback функция
    //может быть только одна на контракт
    //не может иметь аргументы и ничего не возвращает
    //выполняется, как только контракт получает эфир без обращения к функциям
    //должна быть external
    function () external payable{
        
    }
    
    //возврат значений
    function sample1 () public returns(uint){
        return a;
    }
    
    function sample12 () public returns(uint, uint){
        return (a,a);
    }
    
    //все что ниже может относиться не только к функциям, но и к переменным
    //view функция обязывается ничего не менять
    function viewSample () public view returns(uint){
        return a;
    }
    //payable может принимать деньги
    function payableSample () public payable{
        uint donat = msg.value;
    }
    //pure - не читать и ничего не менять
    function pureSample (uint _b) public pure returns(uint){
        return (_b+10);
    }
}