// SPDX-License-Identifier: MIT
// SPDX é um site que identifica as principais licenças do mundo de desenvolvimento de software, com o objetivo de facilitar a identificação destas
// No caso deste repositório a licença utilizada é a MIT que permite o uso livremente do código contido neste repositório

pragma solidity ^0.8.7;
// Variáveis de estado − Variavéis em que os valores são permanentemente armazenadas na memória do contrato
// Exemplo de variável de estado
public uint soma;

function setSoma(uint primeiroNumero, uint segundoNumero) public{
    // variável de estado recebendo o valor da soma
    soma = primeiroNumero + segundoNumero; 
}
