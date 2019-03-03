pragma solidity ^0.5.0;

contract DataTypes{
    
    uint num;                           //беззнаковое число 256 бит
    address owner;
    string name;                        //строка в UTF-8
    bytes rawString;                    //неформатированная строка
    mapping (address => uint) balances; //хэш таблица
    bytes32 byteArray;                  //байтовый массив
    uint[10] array;                     //массив
    bool flag;
	
    struct myStruct{
        uint data;
    }
    
    //по  дефолту значения всех переменных равны 0
    
    constructor () public{
        //do smt...
    }
	
	enum OS {Windows, Linux, OSX}		//перечисление
    OS choice;							//метод работы с ним
	function setLinuxOS(){
		choice = OS.Linux;
	}
	
	//расположение данных
	//для параметров функций - memory
	//для локальных и статических переменных - storage
}