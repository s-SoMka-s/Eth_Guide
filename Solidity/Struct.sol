pragma solidity ^0.5.0;

contract Sample{
    
    struct myStruct{
        bool myBool;
        string myString;
    }
    myStruct s1;
    myStruct s2 = myStruct(true, "");
    
    constructor (bool _initBool, string memory _initString) public{
        //создаем экземпляр структуры в storage
        s1 = myStruct(_initBool, _initString);
        //создаем экземпляр в memory
        myStruct memory s3 = myStruct(_initBool, _initString);
    }
}


