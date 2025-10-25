//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{

    enum Status{ Vacant, Occupied}
    Status public  currentStatus;
    address payable public owner;

    event Occupy(address _occupant, uint _value);

    constructor() {
        owner = payable (msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier onlyWhileVacant{
        require(currentStatus == Status.Vacant, "Currently ocuupied");
        _;
    }

    modifier costs(uint _amount){
        require(msg.value >= _amount, "Insufficient funds");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(sent == true);
        currentStatus = Status.Occupied;

        emit Occupy(msg.sender, msg.value);
    }
}