// SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;
contract HelloWorld{
    
    // this will get initialized to zero
   constructor(uint256) public{} uint256 public expectedAge;

    struct Women{
        uint256 unexpectedAge;
        string name;
    }

    Women[] public woman;

    
    function store(uint256 _expectedAge) public {
        expectedAge = _expectedAge;
    }
    function retrieve() public view returns(uint256) {
        return expectedAge;
     }
function addWomen(string memory _name, uint256 _expectedAge) public{
    woman.push(Women(_expectedAge, _name));
}

     function getAllWomen() public view returns (Women[] memory) {
         return woman;
     }
}