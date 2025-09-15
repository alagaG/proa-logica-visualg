Algoritmo "gpt_09_15_ex10"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê uma quantidade e apresenta essa quantidade de números de
//               Fibonacci.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   quantidade: inteiro
   n1, n2, n3: inteiro

Inicio
   escreval("Insira a quantidade de números de Fibonacci: (inteiro)")
   leia(quantidade)

   enquanto (quantidade > 0) faca
      se (n1 = 0) entao
         n1 := 1
      senao
         se (n2 = 0) entao
            n2 := 1
         senao
            n3 := n2
            n2 := n1
            n1 := n2 + n3
         fimse
      fimse
      escreval(n1)
      quantidade := quantidade - 1
   fimenquanto
Fimalgoritmo