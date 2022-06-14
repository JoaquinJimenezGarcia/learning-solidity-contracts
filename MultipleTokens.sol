// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MultipleTokens is ERC1155 {
    uint256 public constant FUNGIBLE = 0;
    uint256 public constant NO_FUNGIBLE = 1;
    uint256 public constant OTHER_FUNGIBLE = 2;

    constructor() public ERC1155("my own uri") {
        _mint(msg.sender, FUNGIBLE, 1000, "");
        _mint(msg.sender, NO_FUNGIBLE, 1, "");
        _mint(msg.sender, OTHER_FUNGIBLE, 5000, "");
    }
}