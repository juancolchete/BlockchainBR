// SPDX é um site que identifica as principais licenças do mundo de desenvolvimento de software, com o objetivo de facilitar a identificação destas
// No caso deste repositório a licença utilizada é a MIT que permite o uso livremente do código contido neste repositório
// SPDX-License-Identifier: MIT

// Nesta linha é definido a versão do solidity que será utilizada ^0.8.7 versão 0.8.7 ou superior
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
    
    //Variáveis Globais - Essas variáveis especiais existem no contexto global da área de trabalho e provê informações sobre a blockchain em que o contrato roda e propriedades das transações
    function obtemEnderecoChamada() public view returns(address){
        return msg.sender;
    }
}