// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";

contract Polimorfismo {
    
    function sumarDesdeContrato(uint n1, uint n2, address direccionContrato) public returns (uint) {
        Suma interfaceSuma = Suma(direccionContrato);
        return interfaceSuma.sumar(n1,n2);
    }
}