// SPDX-License-Identifier: GPL3
pragma solidity ^0.8.7;
//Nome do contrato, como boa prática o nome dele deve ser o mesmo do token
contract PrimeiroCoin{
    //Mapeamento para conseguir puxar as quantidades de token baseado no endereço
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowance;
    //Definir a quantidade máxima de tokens
    uint public totalSupply = 300000000 * 10 ** 18;
    //Aqui é definido o nome do Token
    string public name =  "PrimeiroCoin";
    //Aqui é definido o código que Identifica o token
    string public symbol = "PCOIN";
    //quantidade de decimais
    uint public decimals = 18;
    //Função de transferir
    event Transfer(address indexed from, address indexed to, uint value);
    //Função de aprovar gasto de determinado token
    event Approval(address indexed owner, address indexed spender, uint value);
    //Função para a carteira que criou o contato receber todo o supply
    constructor(){
        balances[msg.sender] =  totalSupply;
    }
    
    function balanceOf(address owner) public view returns(uint){
        return balances[owner];
    }
    
    function transfer(address to, uint value) public returns(bool){
        require(balanceOf(msg.sender) >= value, 'balance too low');
        balances[to] += value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
    
    function transferFrom(address from, address to, uint value) public returns(bool){
        require(balanceOf(from) >= value, "balance too low");
        require(allowance[from][msg.sender] >= value, 'allowance too low');
        balances[to] += value;
        balances[from] -= value;
        emit Transfer(from, to, value);
        return true;
    }
    
    function approve(address spender, uint value) public returns(bool){
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
}