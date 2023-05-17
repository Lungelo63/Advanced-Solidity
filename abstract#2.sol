// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

abstract contract Test {
    uint x;
//Automatic internal constructor if contract is abstract.
    constructor(uint _x) {
        x = _x;
    }
}
//Value 2 is the contructors parameter uint _x
contract A is Test(2) {

}
