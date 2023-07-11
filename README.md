SMART CONTRACT PROJECT

Here in this project we have written a smart contract that shows the implementation of require(), assert(), and revert() for condition checking and error handling.

DISCRIPTION

This smart contract allows users to set, increase and decrease a stored worth. It includes three functions that are stated below:

 (1) requireSet(uint _Worth): It sets the worth to the specified _Worth parameter. It uses require() to check that the worth is greater that zero.
 
 (2) assertIncrease(uit _amount): It increases the current worth by the specified _amount parameter. It uses assert() to check that the new worth is greater than
 the previous worth.
 
 (3) revertDecrease(uiint _amount): It decreases the current worth by the specified _amount parameter. It uses revert() to revert the transaction if the amount exceeds the current worth.

 PREREQUISITES

 To use this smart contract, you'll need the following:
 
 (1) solidity compiler version 0.8.0 or higher.
 
 (2) Ethereum development environment(eg., Remix, Truffle, Hardhat)
 
 (3) Test environment(eg., Ganache)

GETTING STARTED

Executing the program

To run this program, you can you remix, an online solidity IDE. To get started, go to the remix website https://remix.ethereum.org/.
Once you reach the remix website, create a new file and save the file with a .sol extension and then copy paste the following code in the file:

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


1. Compile the smart contract by using your preferred solidity compiler.
  
2. Deploy the smart contract to your chosen Ethereum development environment.
  
3. Interact with the contract using the provided functions( assertIncrease, requireSet, revertDecrease).

## Authors

Avni Chauhan

AvniChauhan03


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
