Algoritmo "FACCAT - Ex. 17"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Calcular a média aritmética de duas notas e avaliar se o aluno
//               foi aprovado.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis 
   notas: vetor[1..2] de real
   media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira a 1° nota: (real)")
   Leia(notas[1])
   Escreva("Insira a 2° nota: (real)")
   Leia(notas[2])
   media <- (notas[1] + notas[2]) / 2
   Escreval("A média aritmética dessas notas é: ", media)
   se (media >= 6) entao
      Escreva("ALUNO APROVADO")
   senao
      Escreva("ALUNO REPROVADO")
   fimse

Fimalgoritmo