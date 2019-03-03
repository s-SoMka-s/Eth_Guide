pragma solidity ^0.5.0;

contract Sample{
    
    uint data;
    address owner;
    
    event logData(uint _dataToLog);
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    constructor (uint _initData, address _initOwner) public
    {
        data = _initData;
        owner = _initOwner;
    }
    
    function getData() public view returns(uint returnedData){
        return data;
    }
    
    function setData(uint _newData) public onlyOwner{
        emit logData(_newData);
        data = _newData;
    }
}