Algoritmo "FACCAT - Ex. 59"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 números e apresenta quantos são negativos.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero: inteiro
   negativos: inteiro
   contador: inteiro

Inicio
   para contador de 1 ate 10 faca
      escreval(numpcarac(contador) + ". Insira um número: (inteiro)")
      leia(numero)
      escreval()

      se numero < 0 entao
         negativos := negativos + 1
      fimse
   fimpara
   
   escreval(numpcarac(negativos) + " números negativos foram inseridos.")

Fimalgoritmo