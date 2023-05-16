// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract A {
    uint x;

    function setX(uint newX) public {
        x = newX;
    }

    function getX() public virtual view returns (uint) {
        return x;
    }
}

contract B {
    uint y;

    function setY(uint newY) public {
        y = newY;
    }

    function getY() public virtual view returns (uint) {
        return y;
    }
}
//method resolution order. Reads B first than A.
contract child is A,B {
    function test() public view returns (uint){
    return super.getX() + super.getX();
    }

}
