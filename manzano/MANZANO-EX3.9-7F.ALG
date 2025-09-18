algoritmo "manzano-ex3.9-7f"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 2 valores, A e B, inverte seus valores e os apresenta.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor_A: caracter
   valor_B: caracter
   temp: caracter

inicio
   escreval("Insira o valor de A: ")
   escreva("R: ")
   leia(valor_A)

   escreval("Insira o valor de B: ")
   escreva("R: ")
   leia(valor_B)

   temp := valor_A
   valor_A := valor_B
   valor_B := temp

   escreval()
   escreval("= ENTRADA")
   escreval("A = '"+valor_B+"'")
   escreval("B = '"+valor_A+"'")
   escreval("= SAÍDA")
   escreval("A = '"+valor_A+"'")
   escreval("B = '"+valor_B+"'")

fimalgoritmo