Algoritmo "FACCAT - Ex. 19"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê dois valores e indica o maior. (Autor:
//               considere que não serão lidos valores iguais)
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis
   valor_A: real
   valor_B: real
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Escreva("Qual o valor de A: (real) ")
   Leia(valor_A)
   Escreva("Qual o valor de B: (real) ")
   Leia(valor_B)
   
   se (valor_A > valor_B) entao
      Escreva("A > B =", valor_a, " >", valor_b)
   senao
      Escreva("B > A =", valor_b, " >", valor_a)
   fimse

Fimalgoritmo