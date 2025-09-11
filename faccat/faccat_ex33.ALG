Algoritmo "FACCAT - Ex. 33"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê 2 números e avalia qual é maior ou se são iguais.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero1: real
   numero2: real

Inicio
   Escreva("Insira o primeiro número: (real) ")
   Leia(numero1)
   Escreva("Insira o segundo número: (real) ")
   Leia(numero2)
   
   se (numero1 > numero2) entao
      Escreva("O primeiro número  (", numero1, " ) é maior")
   senao
      se (numero2 > numero1) entao
         Escreva("O segundo número (", numero2, " ) é maior")
      senao
           Escreva("Eles são números iguais")
      fimse
   fimse

Fimalgoritmo