Algoritmo "gpt_09_15_ex3"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta todos os múltiplos de 7 encontrados de 1-200 e sua
//               quantidade.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   quantidade: inteiro
   contador: inteiro

Inicio
   para contador de 1 ate 200 faca
      se (contador mod 7 = 0) entao
         escreval("N: ", contador)
         quantidade := quantidade + 1
      fimse
   fimpara

   escreval("Foram encontrados "+numpcarac(quantidade)+" múltiplos de 7")

Fimalgoritmo