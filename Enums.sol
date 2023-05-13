// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract enums{
    //
    enum Status{
        Pending,  // 0
        Shipped,  // 1
        Delevered // 2
    }

    Status public status;

    function setShipped() public {
        status = Status.Shipped;
    }

    function isDelivered() public view returns (bool) {
        return status == Status.Delevered;
    }
    //function to reset status. Back to default value
    function reset() public {
        delete status;
    }


}
