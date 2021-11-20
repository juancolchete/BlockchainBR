# Solidity

Solidity é uma linguagem de programação de alto nível, orientada a contratos, com a síntese parecida com a de JavaScript e desenhada para ser executada na Máquina Virtual Ethereum (EVM).

Solidity é estatisticamente tipada, suporta herança, bibliotecas e tipos complexos definidos pelo usuário entre outras características.

Como você verá, é possível criar contratos para votação, vaquinhas (crowdfunding), leilões às cegas, carteiras multi-assinadas e mais.

# **Um simples Smart Contract**

Deixe-nos começar com o exemplo mais básico. Sem problemas se você não entender tudo neste momento; Iremos entrar em maiores detalhes depois.

### **Armazenamento**

```jsx
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData;
    }
}
```

A primeira linha simplesmente nos diz que o código fonte foi escrito para a versão 0.4.0 do Solidity ou mais recente e não quebra sua funcionalidade (até, mas não incluindo a versão 0.5.0). Isso é para garantir que o contrato não se comporte de forma diferente com uma nova versão do compilador. A palavra chave `pragma` é chamada desta maneira, porque, no geral pragmas são instruções para o compilador sobre como tratar o código fonte.

A primeira função serve para atribuir valor a uma variável de estado `storedData` , você passa como parâmetro o número que você quer atribuir a variável e troca o valor dela.

A segunda função serve para retornar o valor da variável `storedData`.