# Understanding Library in Solidity in-Depth

## Beginner Level

I created a student management contract just to micmic what we've done in class.
The folder structure consist of a library and interface folder along with the contract folder.

- The interface folder holds the function signatures and also the library was imported into it.

- The library holds the state variable in a struct since library can't hold variables.

- The contract itself imports the interface and make use of inheritance to get access to the imported library data in the interface and also the function signature so that a user won't go against the function standard.
