// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// A library is stateless
// Cannot be destroyed
// Cannot inherit, cannot be inherited from
library Math{
    function max(int[] memory numbers) public pure returns (uint){
        if(numbers.length == 0) {
            return 0;
        }
        int currentMax = numbers[0];
        for (uint idx; idx < numbers.length; idx++){
            if (numbers[idx] > currentMax) {
                currentMax = numbers[idx];
            }
        }
        return currentMax;
    }
}

contract Test {
    int[] numbers;

    function addNumber(int number) public {
        numbers.push(number);
    }
    using Math for int[];
    function getMax() public view returns (int) {
        return numbers.max();
    }
}
