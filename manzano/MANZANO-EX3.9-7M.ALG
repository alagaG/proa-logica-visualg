algoritmo "manzano-ex3.9-7m"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 3 valores e apresenta o quadrado de sua soma.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor1: real
   valor2: real
   valor3: real
   resultado: real

inicio
   escreval("Insira o 1° valor: (real)")
   escreva("R: ")
   leia(valor1)

   escreval("Insira o 2° valor: (real)")
   escreva("R: ")
   leia(valor2)

   escreval("Insira o 3° valor: (real)")
   escreva("R: ")
   leia(valor3)

   resultado := (valor1 + valor2 + valor3) * (valor1 + valor2 + valor3)
   escreval("O quadrado da soma é: "+numpcarac(resultado))

fimalgoritmo