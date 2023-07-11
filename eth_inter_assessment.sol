// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SContract {
    uint public Worth;
    
    function requireSet (uint _Worth) external {
        // Using require() to check a condition
        require(_Worth > 0, "Worth should be more than zero");
        
        Worth = _Worth;
    }
    
    function assertIncrease (uint _amount) external {
        // Using assert() to check an invariant
        uint newWorth = Worth + _amount;
        assert(newWorth > Worth);
        
        Worth = newWorth;
    }
    
    function revertDecrease (uint _amount) external {
        // Using revert() to revert the transaction
        if (_amount > Worth) {
            revert("Amount exceeds present Worth");
        }
        
        Worth-= _amount;
}
}
