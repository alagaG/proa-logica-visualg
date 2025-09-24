algoritmo "manzano-ex5.6.1-1g"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta as potências de 3 indo do expoente 0 até o 15
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   potencia: inteiro
   contador: inteiro

inicio
   para contador de 0 ate 15 faca
      se (contador = 0) entao
         potencia := 1
      senao
         potencia := potencia * 3
      fimse

      escreval("3 ^ "+numpcarac(contador)+" = "+numpcarac(potencia))
   fimpara

fimalgoritmo