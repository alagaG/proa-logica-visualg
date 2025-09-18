algoritmo "manzano-ex3.10-1a"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 4 valores e apresenta soma e produto desses números.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor_A: real
   valor_B: real
   valor_C: real
   valor_D: real
   p: real
   s: real

inicio
   escreval("Insira o valor de A: (real)")
   escreva("R: ")
   leia(valor_A)

   escreval("Insira o valor de B: (real)")
   escreva("R: ")
   leia(valor_B)

   escreval("Insira o valor de C: (real)")
   escreva("R: ")
   leia(valor_C)

   escreval("Insira o valor de D: (real)")
   escreva("R: ")
   leia(valor_D)

   p := valor_A * valor_C
   s := valor_B + valor_D

   escreval()
   escreval("= Resultados")
   escreval("A x C = "+numpcarac(p))
   escreval("B + D = "+numpcarac(s))

fimalgoritmo