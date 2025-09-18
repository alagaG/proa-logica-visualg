algoritmo "manzano-ex3.9-7h"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Calcula e apresenta o volume de uma caixa.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   comprimento: real
   largura: real
   altura: real
   volume: real

inicio
   escreval("Insira o valor do comprimento: (real)")
   escreva("R: ")
   leia(comprimento)

   escreval("Insira o valor da largura: (real)")
   escreva("R: ")
   leia(largura)

   escreval("Insira o valor da altura: (real)")
   escreva("R: ")
   leia(altura)

   volume := comprimento * largura * altura
   escreval()
   escreval("O volume da caixa: "+numpcarac(volume)+"m³")

fimalgoritmo