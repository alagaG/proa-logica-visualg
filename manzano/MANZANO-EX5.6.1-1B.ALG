algoritmo "manzano-ex5.6.1-1b"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a tabuada de um número fornecido pelo usuário.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   numero: real
   tabuada: real
   contador: inteiro

inicio
   escreval("Insira um número: (inteiro)")
   leia(numero)

   para contador de 1 ate 10 faca
      tabuada := numero * contador
      escreval(numpcarac(numero) + " x " + numpcarac(contador) + " = " + numpcarac(tabuada))
   fimpara

fimalgoritmo