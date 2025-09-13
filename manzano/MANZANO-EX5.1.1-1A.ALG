algoritmo "manzano-ex5.1.1-1A"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Aprenta a tabuada (1-10) de um número qualquer.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   numero: inteiro
   contador: inteiro

inicio
   escreval("Insira um número: (inteiro)")
   leia(numero)

   contador := 1
   enquanto (contador <= 10) faca
     escreval(numpcarac(numero) + " x " + numpcarac(contador) + " = " + numpcarac(numero * contador))
     contador := contador + 1
   fimenquanto

fimalgoritmo