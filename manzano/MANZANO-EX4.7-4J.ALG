algoritmo "manzano-ex4.7-4j"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Avalia se o número está em uma faixa de 1-9.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   numero: inteiro

inicio
   escreval("Insira um número: (inteiro)")
   escreva("R: ")
   leia(numero)

   se ((numero >= 1) e (numero <= 9)) entao
      escreval("O valor está na faixa permitida.")
   senao
      escreval("O valor não está na faixa permitida.")
   fimse

fimalgoritmo