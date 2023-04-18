// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favoriteNumber; // This gets initialized to zero.

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people; // uint256[] public favoriteNumbersList

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138

    // view, pure
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //  calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
