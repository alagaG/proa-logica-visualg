Algoritmo "FACCAT - Ex. 12"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um valor em graus Fahrenheit e o retorna convertido em
//               graus Celsius.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis 
   fahrenheit : real
   celsius : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Escreva uma temperatura em graus Fahrenheit: ")
   Leia(fahrenheit)
   celsius <- (fahrenheit - 32) / 9 * 5
   Escreva("A mesma temperatura em graus celsius é:", celsius, "C°")

Fimalgoritmo