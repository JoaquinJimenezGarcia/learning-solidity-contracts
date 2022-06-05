// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import "./Modificadores.sol";

contract Herencia is Suma, Modificadores {
    // Needed to send data to Modificadores' constructor
    constructor (string memory nombreNuevo) Modificadores(nombreNuevo) {

    }

    function sumar (uint n1, uint n2) public view override EsOwner returns (uint) {
       return n1+n2; 
    }
}