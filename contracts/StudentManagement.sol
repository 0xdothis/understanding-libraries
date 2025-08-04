// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
//

import "../interface/IStudent.sol";

contract StudentManagement is IStudent {


  //Accessing data saved into the student library   
// Commented out the state variable since its been used from the libray

  //StudentLib.Student[] students; 

 // using the function signature created in the interface
  function create_student(string memory _name, uint32 _age, StudentLib.Hobbies _hobby) external {
    
    StudentLib.register_new_student(_name, _age, _hobby);


  }

  function get_student(uint256 _index) external view returns(StudentLib.Student memory) {
    return StudentLib.get_new_student(_index);

  }

  function get_students() external view returns (StudentLib.Student[] memory) {
     return StudentLib.get_new_students();

  }

  function update_student(uint _index, string memory _name, uint32 _age) external returns (StudentLib.Student memory) {
   
   return StudentLib.update_new_student(_index, _name, _age);

  }

  function update_hobby(uint _index, StudentLib.Hobbies _hobby) external returns (StudentLib.Student memory) {

    return StudentLib.update_new_hobby(_index, _hobby);

  }

  function delete_student(uint _index) external returns (string memory) {

    return StudentLib.delete_new_student(_index);
  }


}
