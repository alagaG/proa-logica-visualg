Algoritmo "FACCAT - Ex. 11"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê o salário, comissão e quantidade de carros vendidos de um
//               funcionário e retorna o valor final.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis 
   carros_vendidos : real
   total_vendido : real
   salario : real
   comissao : real
   salario_final : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira a quantidade de carros vendidos: ")
   Leia(carros_vendidos)
   Escreva("Insira o valor total de vendas: ")
   Leia(total_vendido)
   Escreva("Insira o salário fixo: ")
   Leia(salario)
   Escreva("Insira a comissão por veículo vendido: ")
   Leia(comissao)
   salario_final <- salario + carros_vendidos * comissao + total_vendido * 0.05
   Escreva("O salário final é: R$", salario_final)

Fimalgoritmo