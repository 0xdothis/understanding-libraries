# Understanding Library in Solidity in-Depth

## Beginner Level

I created a student management contract just to micmic what we've done in class.
The folder structure consist of a library and interface folder along with the contract folder.

- The interface folder holds the function signatures and also the library was imported into it.

- The library holds the state variable in a struct since library can't hold variables.

- The contract itself imports the interface and make use of inheritance to get access to the imported library data in the interface and also the function signature so that a user won't go against the function standard.

## Intermediate Level

Going forward I want to move all my functions to the library and call them inside my smart contract, basically I want to abstract all the contracts logic to the library.

## Steps

I moved all my functions logic from my smart contract into my library, at first there were errors because the function signature in my interface needs to change.

I was initially returning some values from some functions since my contract logic's is now in the library the library is responsible for returning any feedback to the user.

## Problem and Fixes

- Errors with function arguments and return types
  I was able to fix the error by removing the return type from the functions in the interface and also from my contracts.

