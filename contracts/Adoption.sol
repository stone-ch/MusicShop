pragma solidity ^0.4.17;

contract Adoption {

  uint[16] public adopters;  // 保存领养者的地址

    // 领养宠物
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);  // 确保id在数组长度内

    adopters[petId] += 1;        // 保存调用这地址 
    return petId;
  }

  // 返回领养者
  function getAdopters() public view returns (uint[16]) {
    return adopters;
  }

}
