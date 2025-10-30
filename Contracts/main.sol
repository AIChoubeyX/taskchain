// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store a number
    uint256 private storedNumber;

    // Event for logging changes
    event NumberUpdated(uint256 oldNumber, uint256 newNumber, address updatedBy);

    // Function to store a number
    function setNumber(uint256 _num) public {
        uint256 old = storedNumber;
        storedNumber = _num;
        emit NumberUpdated(old, _num, msg.sender);
    }

    // Function to retrieve the stored number
    function getNumber() public view returns (uint256) {
        return storedNumber;
    }
}
