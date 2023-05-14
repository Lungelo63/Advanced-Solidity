// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//Base contract. This is the contract that another contract (child contract/derived contract) inherites from.
//Base contract
contract Storage {
    uint public x;

    function setX(uint newX) public {
        x = newX;
    }
//virtual works to override something, x in this instance.
//Overriding is changing the implimentations of an existing function.
    function getX() public virtual view returns (uint) {
        return x + 14;
    }
}  //Overloading   

//Derived contract/Child contract
//If i remove this function, x is gonna be 14.
////Overriding is changing the implimentations of an existing function.
contract Child is Storage{
    function getX() public override  view returns (uint){
        return x;
    }
}
