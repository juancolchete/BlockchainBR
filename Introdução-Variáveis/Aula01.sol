// SPDX-License-Identifier: MIT
// SPDX é um site que identifica as principais licenças do mundo de desenvolvimento de software, com o objetivo de facilitar a identificação destas
// No caso deste repositório a licença utilizada é a MIT que permite o uso livremente do código contido neste repositório

pragma solidity ^0.8.7;
// Variáveis de estado − Variavéis em que os valores são permanentemente armazenadas na memória do contrato
//contrato que representa a Aula01
contract Aula01{
    // Exemplo de variável de estado
    uint public soma;
    
    function somaEstado(uint primeiroNumero, uint segundoNumero) public{
        // variável de estado recebendo o valor da soma
        soma = primeiroNumero + segundoNumero; 
    }
    
    //Variáveis locais - Variaveis em que os valores estão disponíveis apenas na função em que foi definida. Parametros de funções são sempre locais em determinada função.
    //As variáveis primeiroNumero e segundoNumero são locais
    function somaLocal(uint primeiroNumero, uint segundoNumero) public view returns(uint){
        //definição de variáveis locais
        uint terceiroNumero = 10;
        uint soma = primeiroNumero + segundoNumero + terceiroNumero;
        return soma;
    }

}