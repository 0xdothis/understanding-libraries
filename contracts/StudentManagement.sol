// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
//

import "../interface/IStudent.sol";

contract StudentManagement is IStudent {

  //Accessing data saved into the student library   
 StudentLib.Student[] students; 

 // using the function signature created in the interface
  function create_student(string memory _name, uint32 _age, StudentLib.Hobbies _hobby) external {
    StudentLib.Student memory new_student_ = StudentLib.Student(_name, _age, _hobby);

    students.push(new_student_);

  }

   function get_student(uint256 _index) external view returns (StudentLib.Student memory) {
    return students[_index];

   }

   function get_students() external view returns (StudentLib.Student[] memory) {
     return students;

 }

 function update_student(uint _index, string memory _name, uint32 _age) external returns (StudentLib.Student memory) {
   require( _age != 0, "Fields cannot be empty");
   students[_index].name = _name;
   students[_index].age = _age;

   return students[_index];
 }

function update_hobby(uint _index, StudentLib.Hobbies _hobby) external returns (StudentLib.Student memory) {
  students[_index].hobby = _hobby;

  return students[_index];
}

  function delete_student(uint _index) external returns (string memory) {
    require(_index <= students.length, "Student not found");

    for(uint i; i < students.length; i++) {
      if(i == _index) {
        students[i] = students[students.length - 1];

        return "Student Deleted Successfully";
      }
    }

    return "Failed Can't Find Student";
  }

 }
