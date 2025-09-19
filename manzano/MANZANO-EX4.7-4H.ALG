algoritmo "manzano-ex4.7-4h"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 5 valores e apresenta o maior e o menor.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   num: inteiro
   menor: inteiro
   maior: inteiro

inicio
   menor := 2000000

   escreval("Insira o 1° número: (inteiro)")
   escreva("R: ")
   leia(num)

   se (num > maior) entao
      maior := num
   fimse

   se (num < menor) entao
      menor := num
   fimse
   
   escreval("Insira o 2° número: (inteiro)")
   escreva("R: ")
   leia(num)

   se (num > maior) entao
      maior := num
   fimse

   se (num < menor) entao
      menor := num
   fimse

   escreval("Insira o 3° número: (inteiro)")
   escreva("R: ")
   leia(num)

   se (num > maior) entao
      maior := num
   fimse

   se (num < menor) entao
      menor := num
   fimse

   escreval("Insira o 4° número: (inteiro)")
   escreva("R: ")
   leia(num)

   se (num > maior) entao
      maior := num
   fimse

   se (num < menor) entao
      menor := num
   fimse

   escreval("Insira o 5° número: (inteiro)")
   escreva("R: ")
   leia(num)

   se (num > maior) entao
      maior := num
   fimse

   se (num < menor) entao
      menor := num
   fimse
   
   escreval()
   escreval("Maior: "+numpcarac(maior))
   escreval("Menor: "+numpcarac(menor))

fimalgoritmo