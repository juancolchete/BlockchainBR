// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract Aula02{
    // Função para comparar dois números e retornar se um é maior que o outro menor ou igual
    function compararDoisNumeros(int primeiroNumero, int segundoNumero) public pure returns(string memory) {
        string memory resultado;
        // utiliza o operador de comparação > para validar se primeiroNumero é maior que segundoNumero
        if(primeiroNumero > segundoNumero){
            resultado = "O primeiro numero e maior que o segundo";
        // caso a primeira condição não seja satisfeita utiliza o operador de comparação < para validar se primeiroNumero é menor que segundoNumero
        }else if(primeiroNumero < segundoNumero){
             resultado = "O segundo numero e maior que o primeiro";
        }else{
            resultado = "Os dois numeros sao iguais";
        }
        return resultado;
    }
    // Função para validar se vair chover hoje considerando que caso a umidade realativa do ar seja 80 porcento ou mais vai chover
    function vaiChover(uint umidade) public pure returns(bool){
        // valida se a umidade é maior ou igua a 80
        if(umidade >= 80){
            //retorna Verdadeiro em caso de ser maior
          return true;  
        }else{
           //retorna Falso em caso de ser menor
          return false;
        }
    }
    // Função para validar o tipo do animal
    function tipoAnimal(bool anda, bool temPenas,bool voa, bool nada, bool temEscamas) public pure returns(string memory){
        // Se ele não anda, não voa. não tem escamas mas nada é um animal marinho
        if(anda == false && voa == false && temEscamas == false && nada == true){
            return  "Animal Marinho";
        }
        // Se ele tem penas ou voa é uma Ave
        if(temPenas == true || voa == true){
            return "Ave";
        }
         // Se ele anda e nada é um anfíbio
        if(anda == true && nada == true){
            return "Anfibio";
        }
        // Se ele nada e tem escamas ele é peixe
        if(nada == true && temEscamas == true){
            return "Peixe";
        }
    }
} 