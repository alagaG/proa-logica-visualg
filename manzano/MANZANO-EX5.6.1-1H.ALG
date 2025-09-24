algoritmo "manzano-ex5.6.1-1h"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta as potências de 3 indo do expoente 0 até o 15
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   elevado: inteiro
   potencia: inteiro
   contador: inteiro
   expoente: inteiro

inicio
   escreval("Insira o valor a ser elevado: (inteiro)")
   leia(elevado)

   escreval("Insira o valor do expoente: (inteiro)")
   leia(expoente)

   potencia := 1
   para contador de 1 ate expoente faca
      potencia := potencia * elevado
   fimpara

   escreval("Número elevado:")
   escreval(potencia)

fimalgoritmo