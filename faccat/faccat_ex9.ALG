Algoritmo "FACCAT - Ex. 9"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê o salário de um funcionário e seu reajuste retornando
//               com um reajuste.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis 
   salario : real
   reajuste : real
   salario_reajustado : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Digite o valor atual do salário: ")
   Leia(salario)
   Escreva("Digite o percentual de reajuste (10 = 10%): ")
   Leia(reajuste)
   salario_reajustado <- salario * (reajuste / 100)
   Escreva("O salário reajustado é R$", salario_reajustado)

Fimalgoritmo