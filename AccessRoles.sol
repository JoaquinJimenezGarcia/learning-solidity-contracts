// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract AccessRoles is AccessControl {
    bytes32 public constant ROLE_ADMIN = keccak256("ROLE_ADMIN");
    bytes32 public constant ROLE_USER = keccak256("ROLE_USER");

    constructor() {
        _grantRole(ROLE_ADMIN, msg.sender);
    }

    function justAdmin() public {
        require(hasRole(ROLE_ADMIN, msg.sender), "Function only for admins");
    }

    function justUser() public {
        require(hasRole(ROLE_USER, msg.sender), "Function only for users");  
    }

    function addRole(bytes32 role, address account) public {
        require(hasRole(ROLE_ADMIN, msg.sender), "Function only for admins");

        _grantRole(role,account);
    }
}