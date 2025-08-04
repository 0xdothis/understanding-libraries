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

  struct State {
    Student[] students;
  }

  // Create a constant variabele called APP_STORAGE
  bytes32 internal constant APP_STORAGE = keccak256("student.storage");


  // Create a function to allocate storage space
  function AppStorage() public pure returns (StudentLib.State storage s) {
    bytes32 slot = APP_STORAGE;

    assembly {
      s.slot := slot
    }
  }


// All functions required to successfully operate the smart contract;
  function register_new_student(string memory _name, uint32 _age, Hobbies _hobby) internal {
    State storage s = AppStorage();

    Student memory students_ = Student(_name, _age, _hobby);

    s.students.push(students_);
  }

  function update_new_student(uint _index, string memory _name, uint32 _age) internal returns(Student memory) {
      require( _age != 0, "Fields cannot be empty");

      State storage s = AppStorage();
    s.students[_index].name = _name;
    s.students[_index].age = _age;

    return s.students[_index];
  }


  function update_new_hobby(uint _index, Hobbies _hobby) internal returns (Student memory) {
    State storage s = AppStorage();
    

    s.students[_index].hobby = _hobby;

    return s.students[_index];

  }
 function get_new_student(uint256 _index) internal view returns (Student storage) {
   
  State storage s = AppStorage();

   return s.students[_index];
 }  

  function get_new_students() internal view returns (Student[] storage) {

  State storage s = AppStorage();

  return s.students;
  }

    function delete_new_student(uint _index) internal returns (string memory) {
      State storage s = AppStorage();
        
      require(_index < s.students.length, "Student does not exist");
      s.students[_index] = s.students[s.students.length - 1];

      return "DELETED SUCCESSFULLY";
    }


}
