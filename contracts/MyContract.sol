//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address owner;
    modifier onlyOwner() {
        require(msg.sender == owner ,"Must be owner");
        _;
    }

    constructor(){
        owner = msg.sender;
    }
}

contract SecretVault{
    string secret;
    constructor(string memory _secret) {
        secret = _secret;

    }
    function getSecret() public view returns(string memory){
        return secret;
    }

}


contract MyContract is Ownable{

    address secretVault;
    constructor(string memory _secret){
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns(string memory){
        return SecretVault(secretVault).getSecret();
    }

  
    
    // uint [] public numbers = [1,2,3];
    // address public owner;
    // constructor() {
    //     owner = msg.sender;
    // }
    // function countEven() public view returns (uint) {
    //     uint count=0;
    //     for (uint i=0; i < numbers.length; i++) 
    //     {
    //         if(isEven(numbers[i])){
    //             count++;
    //         }
    //     }
    //     return count;
    // }
    // function isEven(uint _number) public pure returns(bool){
    //     if(_number % 2 == 0 ){
    //     return true;}
    //     else {return false;}
    // }
    
    // function isOwner(address _address) public view returns(bool) {
    //     if(owner == _address){
    //         return true;
    //     }
    //     else {
    //         return false;
    //     }
    // }
    // mapping(uint => string) names;

    // constructor() {
    //     names[1] = "Adam";
    //     names[2] = "Bruce";
    //     names[3] = "Bob";
    // }
    
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