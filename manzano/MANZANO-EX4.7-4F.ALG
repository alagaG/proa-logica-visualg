algoritmo "manzano-ex4.7-4f"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 3 valores e os apresenta em ordem crescente.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   numero1: real
   numero2: real
   numero3: real

inicio
   escreval("Insira o 1° valor: (real)")
   escreva("R: ")
   leia(numero1)

   escreval("Insira o 2° valor: (real)")
   escreva("R: ")
   leia(numero2)

   escreval("Insira o 3° valor: (real)")
   escreva("R: ")
   leia(numero3)

   se (numero1 > numero2) entao
      se (numero1 > numero3) entao
         escreva(numpcarac(numero1)+" "+numpcarac(numero2)+" "+numpcarac(numero3))
      senao

      fimse
   senao

   fimse

fimalgoritmo