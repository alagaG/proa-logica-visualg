Algoritmo "FACCAT - Ex. 13"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 3 notas de um aluno e retorna a média ponderada delas.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis 
   nota1 : real
   nota2 : real
   nota3 : real
   media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira a 1° Nota do aluno: ")
   Leia(nota1)
   Escreva("Insira a 2° Nota do aluno: ")
   Leia(nota2)
   Escreva("Insira a 3° Nota do aluno: ")
   Leia(nota3)
   media <- (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10
   Escreva("A média ponderada das notas desse aluno é:", media)

Fimalgoritmo