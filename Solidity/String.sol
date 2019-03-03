pragma solidity ^0.5.0;

contract Sample{
    string myString = ""; //пустая строка
    bytes myRawString;  //неформатированная тоже строка
    
    constructor (string memory _initString, bytes memory _initRawString) public{
        myString = _initString;
        
        //myString2 содержит указатель на myString
        string memory myString2 = myString;
        
        //строка в памяти
        string memory myString3 = "ABCDE";
        //меняем длину и содержимое строки
        myString3 = "XYZ";
        //присваиваем значение неформатированной строки
        myRawString = _initRawString;
        //увеличиваем длину
        myRawString.length++;
    }
}


