//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    mapping(uint => string) names;

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Bob";
    }
    
    // uint [] public uintArray = [1,2,3];
    // string [] strignArray = ["apple", "banana"];
    // string [] public values;

    // function addValue(string memory _value) public{
    //     values.push(_value);
    // }

    // function valueCount() public view returns(uint){
    //     return values.length;
    // }
    // uint public myUint = 1;
    // uint256 public myUint256 = 1;
    // uint8 public myUint8 = 1;
    // int256 public myInt = 1;

    // string public myString = "Hello world!";
    // bytes32 public myBytes32 = "Hello world!";

    // address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // struct MyStruct{
    //     uint256 myUint256;
    //     string myString;
    // }

    // MyStruct public myStruct = MyStruct(1, "Hello world!");

    // function getValue() public pure returns(uint) {
    //     uint value = 1;
    //     return value;
    // }
}