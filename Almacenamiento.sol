// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Almacenamiento {
    string private nombre;

    // Storage: guardado persistente
    // Memory: guardado temporal
    constructor(string memory palabra) {
        // al asignar a una variable privada, pasa a ser de tipo "storage"
        nombre = palabra;
    }
}