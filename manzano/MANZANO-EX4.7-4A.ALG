algoritmo "manzano-ex4.7-4a"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 2 valores e apresenta a diferença do maior pelo menor.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor1: real
   valor2: real
   diferenca: real

inicio
   escreval("Insira o 1° valor: (real)")
   escreva("R: ")
   leia(valor1)

   escreval("Insira o 2° valor: (real)")
   escreva("R: ")
   leia(valor2)

   se (valor1 > valor2) entao
      diferenca := valor1 - valor2
   senao
      diferenca := valor2 - valor1
   fimse
   
   escreval("A diferença é: "+numpcarac(diferenca))

fimalgoritmo