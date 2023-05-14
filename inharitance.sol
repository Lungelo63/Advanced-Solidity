// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
// new instances for smart contract.
// how to inharite from a smart contract.
// method resolution order.
// multiple inharitance.
contract Storage {
    uint public x;

    function setX(uint newX) public {
        x = newX;
    }
}

contract Caller {
    Storage store;
    constructor(){
        store = new Storage();
    }

    function setX(uint x) public {
        store.setX(x);
    }

    function getX() public view returns (uint) {
        return store.x();
    }
}
