Algoritmo "FACCAT - Ex. 30"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê 3 números e os apresenta em ordem crescente.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero1: real
   numero2: real
   numero3: real

Inicio
   Escreva("Insira o primeiro número: (real) ")
   Leia(numero1)
   Escreva("Insira o segundo número: (real) ")
   Leia(numero2)
   Escreva("Insira o terceiro número: (real) ")
   Leia(numero3)
   
   se (numero1 > numero2) entao
      se (numero2 > numero3) entao
         Escreva(numero3, numero2, numero1)
      senao
         se (numero1 > numero3) entao
            Escreva(numero2, numero3, numero1)
         senao
            Escreva(numero2, numero1, numero3)
         fimse
      fimse
   senao
      se (numero1 < numero3) entao
         se (numero3 < numero2) entao
            Escreva(numero1, numero3, numero2)
         senao
            Escreva(numero1, numero2, numero3)
         fimse
      senao
         Escreva(numero3, numero1, numero2)
      fimse
   fimse

Fimalgoritmo