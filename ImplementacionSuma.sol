// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";

contract ImplementacionSuma is Suma {
    function sumar (uint n1, uint n2) public override pure returns (uint) {
       return n1+n2; 
    }
}