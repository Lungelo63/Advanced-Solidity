// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
//abstract base contract
//You gonna have some functions that they're are not implimented
//The point of it is to act as a base or parent contract for other contracts
abstract contract AbstractMath {
    
    function reeturn1() public pure returns (uint){
        return 1;
    }
//abstract function. they must be virtual. they must be overridtten but the calling function
    function getValue() public virtual view returns (uint);
    
    function add5() public view returns (uint) {
        return getValue() + 5;
    }
}

contract Math is AbstractMath {
    uint x;
    
    function setX(uint _x) public {
        x = _x;
    }

    function getValue() public override view returns (uint){
        return x;
    }
}
