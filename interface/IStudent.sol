// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "../libraries/StudentLib.sol";



interface IStudent {

  function create_student(string memory _name, uint32 _age, StudentLib.Hobbies _hobby) external; 

  function get_student(uint256 _index) external;  

  function get_students() external view;

  function update_student(uint _index, string memory _name, uint32 _age) external; 

  function update_hobby(uint _index, StudentLib.Hobbies _hobby) external;

  function delete_student(uint _index) external;
}
