Algoritmo "gpt_09_15_ex1"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a soma de todos os números ímpares de 1-300.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   contador: inteiro
   soma: inteiro

Inicio
   para contador de 1 ate 300 faca
      se (contador mod 2 = 1) entao
         soma := soma + contador
      fimse
   fimpara

   escreval("A soma é: "+numpcarac(soma))

Fimalgoritmo