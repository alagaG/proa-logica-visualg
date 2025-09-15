Algoritmo "gpt_09_15_ex5"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a soma de todos os números de 1-1000 divisíveis por
//               3 e por 5
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   contador: inteiro
   soma: inteiro

Inicio
   para contador de 1 ate 300 faca
      //se ((contador mod 3 = 0) e (contador mod 5 = 0)) entao
      se (contador mod 15 = 0) entao
         soma := soma + contador
      fimse
   fimpara

   escreval("A soma é: "+numpcarac(soma))

Fimalgoritmo