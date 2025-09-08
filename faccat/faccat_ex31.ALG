Algoritmo "FACCAT - Ex. 31"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê os 3 lados de um triângulo e avalia se forma um ou não.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   lado_A: real
   lado_B: real
   lado_C: real

Inicio
   Escreva("Insira o lado A: (real) ")
   Leia(lado_A)
   Escreva("Insira o lado B: (real) ")
   Leia(lado_B)
   Escreva("Insira o lado C: (real) ")
   Leia(lado_C)

   se (lado_A + lado_B > lado_C) entao
      se (lado_B + lado_C > lado_A) entao
         se (lado_C + lado_A > lado_B) entao
            Escreva("É um triângulo")
         senao
            Escreva("Não é um triângulo")
         fimse
      senao
         Escreva("Não é um triângulo")
      fimse
   senao
      Escreva("Não é um triângulo")
   fimse

Fimalgoritmo