algoritmo "manzano-ex3.9-7b"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê uma temperatura em Fahrenheit e a apresenta em Celsius.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   celsius: real
   fahrenheit: real

inicio
   escreval("Insira a temperatura em Fahrenheit (F): (real)")
   escreva("R: ")
   leia(fahrenheit)

   celsius := (fahrenheit - 32) * (5 / 9)
   escreval("A mesma temperatura em Celsius é: "+numpcarac(celsius)+"C°")

fimalgoritmo