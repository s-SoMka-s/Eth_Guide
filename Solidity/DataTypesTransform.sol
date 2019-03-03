pragma solidity ^0.5.0;

contract TypesTransform{
    uint32 a = 0x123456;
    uint16 b = uint16(a);
}