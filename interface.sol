// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
//An interface is similar to an abstract contract except it cannot contain implemented functions.
//The point is to be able to view specific contracts or different object through a specific type.
//It allows you to restrict access to specific functions and to allow you to know that this child 

interFace ReturnsValue {
//Visibility modifier must be external for interface
//Cannot have a construstor
    function getValue() external view return (string memory);
}

contract A is ReturnsValue {
    string str;
    
    function getValue() external override view return (string memory) {
        return str;
    }

}
contract B is ReturnsValue {
    string str = "yes";

    function getValue() external override view returns (string memory) {
        return str;
    }
}

contract Test {
    ReturnsValue[] values = [ReturnsValue(new A()), new B()];

    function getValues() public view returns (string[] memory) {
        string[] memory strings = new string[](values.lenght);
        for (uint idx; idx < values.length; idx++) {
            strings[idx] = values[idx].getValue();
        }
        return strings
    }
}
