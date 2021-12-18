// SPDX-License-Identifier: MIT
//Definição da versão em que será compilado este arquivo
pragma solidity ^0.8.0;

contract OperadoresAritmeticos{
    // Ao chamar somaDoisValores(2,3)
    // A função retorna 5
    function somaDoisValores(uint256 primeiroValor, uint256 segundoValor) public pure returns(uint256){
        return primeiroValor + segundoValor;
    }
    // Ao chamar subtraiDoisValoresUint(3,2)
    // A função retorna 1
    // Ao chamar subtraiDoisValores(2,3)
    // Ocorre um erro pois esta operação retorna um número negativo
    function subtraiDoisValoresUint(uint256 primeiroValor, uint256 segundoValor) public pure returns(uint256){
        return primeiroValor - segundoValor;
    }

    // Ao chamar subtraiDoisValores(3,2)
    // A função retorna 1
    // Ao chamar subtraiDoisValores(2,3)
    // A função retorna -1
    function subtraiDoisValores(int256 primeiroValor, int256 segundoValor) public pure returns(int256){
        return primeiroValor - segundoValor;
    }

    // Ao chamar multiplicaDoisValores(3,2)
    // A função retorna 6
    function multiplicaDoisValores(uint256 primeiroValor, uint256 segundoValor) public pure returns(uint256){
        return primeiroValor * segundoValor;
    }

    // Ao chamar divideDoisValores(10,2)
    // A função retorna 5
    // Ao chamar divideDoisValores(5,2)
    // A função retorna 0 pois é o resultado inteiro da divsão
    function divideDoisValores(uint256 numerador, uint256 denominador) public pure returns(uint256){
        return numerador / denominador;
    }

    // Ao chamar restoDivisao(10,2)
    // A função retorna 0 pois ao dividir 10 por 2 não sobra resto inteiro
    // Ao chamar restoDivisao(5,2)
    // A função retorna 1 pois ao dividir 5 por 2 sobra o resto inteiro 1 (divisão inteira) => 5 / 2 = 4 => 5 - 4 = 1
    function restoDivisao(uint256 numerador, uint256 denominador) public pure returns(uint256){
        return numerador % denominador;
    }

    // Ao chamar incrementarNumero(2)
    // A função retorna 3
    function incrementarNumero(uint256 numeroParaIncrementar) public pure returns(uint256){
        return ++numeroParaIncrementar;
    }

    // Ao chamar incrementarNumero(2)
    // A função retorna 1
    function decrementarNumero(uint256 numeroParaDecrementar) public view returns(uint256){
        return --numeroParaDecrementar;
    }
}