Algoritmo "FACCAT - Ex. 23"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a altura e sexo de um individuo e apresenta o peso ideal.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   altura: real
   sexo: caracter
   peso_ideal: real
   
Inicio
   Escreva("Insira sua altura: (real) ")
   Leia(altura)
   Escreva("Insira seu sexo: (M ou F) ")
   Leia(sexo)
   se (sexo = "M") entao
      peso_ideal := 72.7 * altura - 58
   senao
      peso_ideal := 62.1 * altura – 44.7
   fimse
   escreva("Seu peso ideal é:", peso_ideal)

Fimalgoritmo