Algoritmo "FACCAT - Ex. 53"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta os números depois de 1 a N, sendo N inserido pelo
//               usuário.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   loop_i: inteiro
   loop_final: inteiro

Inicio
   escreval("Insira um número : (inteiro)")
   leia(loop_final)

   escreval()
   para loop_i de 1 ate loop_final faca
      escreval("N: " + numpcarac(loop_i))
   fimpara

Fimalgoritmo