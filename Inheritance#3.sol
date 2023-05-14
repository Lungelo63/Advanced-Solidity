// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
//Single inheritance
//Base contract. This is the contract that another contract (child contract/derived contract) inherites from.
//Base contract
contract Storage {
    uint public x;

    constructor(uint startingValue){
        x = startingValue;
    }

    function setX(uint newX) public {
        x = newX;
    }
//virtual works to override something, x in this instance.
//Overriding is changing the implimentations of an existing function.
    function getX() public virtual view returns (uint) {
        return x + 14;
    }
}  //Overloading is when you providing a function with the same name that excepts different parameters.
//This is an overloaded function that has a different parameters.
contract Child is Storage{
    constructor(uint startingValue) Storage(startingValue){

    }
    
    function getX() public override view returns (uint){
        //Super lets solidity know that youre calling the previous getX() function (base contract).
        //Super allows you to use stuff from the base contract.
        return x + super.getX();
    }
}
