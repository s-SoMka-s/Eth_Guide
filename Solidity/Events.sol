pragma solidity ^0.5.0;

contract Sample{
    //объявление event-a
    event Deposit(
        address _from,
        bytes32 _id,
        uint _value
    );
    
    function deposit(bytes32 _id) public payable {
        // Events are emitted using `emit`, followed by
        // the name of the event and the arguments
        // (if any) in parentheses. Any such invocation
        // (even deeply nested) can be detected from
        // the JavaScript API by filtering for `Deposit`.
        emit Deposit(msg.sender, _id, msg.value);
    }
}


//python code чтоб отлавить event
//
//contract_by_address = w3.eth.contract(address=address, abi=abi)
//event = contract_by_address.functions.deposit(bytes(8))
//print(event)