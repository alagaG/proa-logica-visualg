algoritmo "manzano-ex4.7-4i"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um valor e analisa se ele é ímpar ou par.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   numero: inteiro

inicio
   escreval("Insira um número: (inteiro)")
   escreva("R: ")
   leia(numero)

   se (numero % 2 = 0) entao
      escreval(numpcarac(numero)+" é par")
   senao
      escreval(numpcarac(numero)+" é ímpar")
   fimse

fimalgoritmo