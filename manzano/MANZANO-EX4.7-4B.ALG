algoritmo "manzano-ex4.7-4b"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e apresenta seu valor absoluto.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   numero: real
   absoluto: real

inicio
   escreval("Insira um valor: (real)")
   escreva("R: ")
   leia(numero)

   absoluto := numero
   se (numero < 0) entao
      absoluto := absoluto * -1
   fimse

   escreval("O valor absoluto no número inserido é: "+numpcarac(absoluto))

fimalgoritmo