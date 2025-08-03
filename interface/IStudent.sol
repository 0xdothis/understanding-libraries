// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "../libraries/StudentLib.sol";

interface IStudent {

  function create_student(string memory _name, uint32 _age, StudentLib.Hobbies _hobby) external; 

  function get_student(uint256 _index) external view returns (StudentLib.Student memory);

  function get_students() external view returns (StudentLib.Student[] memory);

  function update_student(uint _index, string memory _name, uint32 _age) external returns (StudentLib.Student memory); 

  function update_hobby(uint _index, StudentLib.Hobbies _hobby) external returns (StudentLib.Student memory);

  function delete_student(uint _index) external returns (string memory);
}
