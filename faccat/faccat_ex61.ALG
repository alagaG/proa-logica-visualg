Algoritmo "FACCAT - Ex. 61"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 números e apresenta a média aritmética.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero: inteiro
   somatorio: inteiro
   contador: inteiro

Inicio
   para contador de 1 ate 10 faca
      escreval(numpcarac(contador) + ". Insira um número: (inteiro)")
      leia(numero)
      escreval()
      somatorio := somatorio + numero
   fimpara
   
   escreval("A média aritmética desses valores é: " + numpcarac(somatorio / 10))
Fimalgoritmo