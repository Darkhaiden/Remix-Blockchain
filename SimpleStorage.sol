// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256  favNum;
    
struct people {  // custom data storage with mulitple fields
    uint256 favNum;
    string name;
}
//people public person = people({favNum: 3, name: "Patrick"});  

people[] public people1;


function store(uint256 _favNum) public{
    favNum= _favNum;      
}

function retrieve() public view returns(uint256){
    return favNum;
}
// view and pure can help to don't spend gas
//view is mainly used to read a function from other function
// pure is mainly used you to read from blockchain state and can't update

function addperson(string memory _name , uint256 _favNum) public{
    people1.push(people(_favNum,_name)); //array insertion to people
}// Memory,Calldata :refers to a byte-array that holds temporary values during the execution of a function
//storage: refers to the permanent storage area within a smart contract

}