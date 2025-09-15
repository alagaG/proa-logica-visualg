Algoritmo "FACCAT - Ex. 56"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a tabuada de N, sendo N informado pelo usuário.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero: inteiro
   loop_i: inteiro

Inicio
   escreval("Insira um número: (inteiro)")
   leia(numero)

   para loop_i de 1 ate 10 faca
      escreval(numpcarac(numero) + " x " + numpcarac(loop_i) + " = " + numpcarac(numero * loop_i))
   fimpara

Fimalgoritmo