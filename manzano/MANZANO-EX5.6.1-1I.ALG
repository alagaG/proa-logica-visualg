algoritmo "manzano-ex5.6.1-1i"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta 15 elementos da sequência de Fibonacci.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   num1: inteiro
   num2: inteiro
   num3: inteiro
   contador: inteiro

inicio
   num1 := 1
   num2 := 1
   para contador de 1 ate 15 faca
      num3 := num2
      num2 := num1
      num1 := num2 + num3
      escreval(num3)
   fimpara

fimalgoritmo