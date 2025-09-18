algoritmo "manzano-ex3.9-7a"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê uma temperatura em Celsius e a apresenta em Fahrenheit.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   celsius: real
   fahrenheit: real

inicio
   escreval("Insira a temperatura em Celsius (C°): (real)")
   escreva("R: ")
   leia(celsius)

   fahrenheit := (celsius * 9 + 160) / 5
   escreval("A mesma temperatura em Fahrenheit é: "+numpcarac(fahrenheit)+"F")


fimalgoritmo