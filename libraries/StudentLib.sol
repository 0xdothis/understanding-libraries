// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;


library StudentLib {
  //Sets the storage variable to a new value
  struct Student {
    string name;
    uint32 age;
    Hobbies hobby;
  }

  enum Hobbies {
    FOOTBALL,
    READING,
    SWIMMING,
    COOKING,
    DANCING,
    SLEEPING
  }

}
