Algoritmo "FACCAT - Ex. 64"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 números e apresenta a soma daqueles menores que 40.
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

      se (numero < 40) entao
         somatorio := somatorio + numero
      fimse
   fimpara

   escreval("A soma valores menores que 40 é: " + numpcarac(somatorio))
Fimalgoritmo