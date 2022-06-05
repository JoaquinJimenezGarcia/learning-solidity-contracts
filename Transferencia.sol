// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Transferencia {

    // The transaction will be made from the contract and not form the account
    // which is calling the contract, so it will need quatity assigned.
    constructor() payable {

    }

    function transferenciaPorSend(address destino, uint monto) public returns(bool) {
        bool salida = payable(destino).send(monto);
        return salida;
    }

    function transferenciaPorTransfer(address destino, uint monto) public {
        payable(destino).transfer(monto);
    }

    function transferenciaPorcall(address destino, uint monto) public returns (bool) {
        (bool salida, bytes memory respuesta) = destino.call{value:monto, gas:1000}("");
        return salida;
    }
}