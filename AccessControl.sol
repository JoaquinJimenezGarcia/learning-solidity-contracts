// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract AccessControlForStorage is AccessControl{
    bytes32 ROLE_ADMIN = keccak256("ROLE_ADMIN");
    bytes32 ROLE_WRITER = keccak256("ROLE_WRITER");
    uint256 number;

    constructor() {
        _grantRole(ROLE_ADMIN, msg.sender);
    }

    function store(uint256 num) public onlyWriter() {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }

    function addWriterRoleToUser(address account) public onlyAdmin() {
        _grantRole(ROLE_WRITER, account);
    }

    function revokeWriterRoleToUser(address account) public onlyAdmin() {
        _revokeRole(ROLE_WRITER, account);
    }

    modifier onlyWriter() {
        require(hasRole(ROLE_WRITER, msg.sender), "Only writers can execute this function");
        _;
    }

    modifier onlyAdmin() {
        require(hasRole(ROLE_ADMIN, msg.sender), "Only admins can execute this function");
        _;
    }
}