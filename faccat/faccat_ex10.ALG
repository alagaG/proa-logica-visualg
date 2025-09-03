Algoritmo "FACCAT - Ex. 10"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê o valor de fábrica de um veículo e retorna o valor
//               acrescido da taxa de venda e impostos
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis
   valor_fabrica : real
   valor_venda : real
   valor_imposto: real
   valor_total : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira o valor de fábrica do veículo: ")
   Leia(valor_fabrica)
   valor_venda <- valor_fabrica * 0.28
   valor_imposto <- valor_fabrica * 0.45
   valor_total <- valor_fabrica + valor_venda + valor_imposto
   Escreva("Taxa de Venda: R$", valor_venda, " | Taxa de Imposto: R$", valor_imposto, " | Valor Total: R$", valor_total)

Fimalgoritmo