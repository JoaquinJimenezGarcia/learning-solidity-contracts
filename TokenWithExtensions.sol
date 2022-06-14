// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenWithExtensions is ERC20Burnable, Pausable, Ownable {
    constructor() ERC20Burnable() ERC20("NewToken", "NTK") {
        _mint(msg.sender, 1000);
    }

    function pause() onlyOwner public {
        _pause();
    }

    function resume() onlyOwner public {
        _unpause();
    }

    function burning_token(uint quantity) public {
        require(paused() != true, "The contract is paused.");
        burn(quantity);
    }
}