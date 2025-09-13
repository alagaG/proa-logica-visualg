algoritmo "manzano-ex5.1.1-1L"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lâ valores até um número negativo e apresenta o maior e o menor
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   num: real
   min: real
   max: real

inicio
   min := 2147483647

   enquanto (num >= 0) faca
      escreval("Insira um número: (real)")
      leia(num)
      escreval()

      se (num > max) entao
            max := num
         senao
            se ((num < min) e (num >= 0)) entao
               min := num
            fimse
         fimse
   fimenquanto
   
   escreval("O maior número foi: " + numpcarac(max))
   escreval("O menor número foi: " + numpcarac(min))

fimalgoritmo