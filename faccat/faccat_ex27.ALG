Algoritmo "FACCAT - Ex. 27"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê um valor e retorna se é positivo, negativo ou zero.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero: real

Inicio
   Escreva("Insira um número: (real) ")
   Leia(numero)
   
   se (numero < 0) entao
      Escreva("O número é negativo")
   senao
      se (numero > 0) entao
         Escreva("O número é positivo")
      senao
         Escreva("O número é zero")
      fimse
   fimse

Fimalgoritmo