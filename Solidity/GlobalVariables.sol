block.blockhash(uint blockNumber) returns (bytes32) //хеш данного блока
block.coinbase (address) //адрес майнера текущего блока
block.difficulty (uint) //сложность блока
block.gaslimit (uint) //лимит газа блока
block.number (uint) //номер блока

msg.data (bytes) //полные данные вызова(функция вызываемая транзакцией и ее аргументы)
msg.gas (uint) //остаток газа
msg.sender (address) //адрес отправителя
msg.value (uint) //кол-во Wie, переданных сообщением


now (uint) //метка времени текущего блока

tx.gasprice (uint) //цена газа транзакции
tx.origin (address) //адрес отправителя транзакции

<address>.balance (uint256) //баланс адреса в wei
<address>.send(uint256 amount) returns (bool) //отправка Wei на address