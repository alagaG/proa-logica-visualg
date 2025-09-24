algoritmo "manzano-ex5.2.1-1c"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta todos os divisíveis por 4 entre 1 e 200.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   contador: inteiro

inicio
   contador := 1
   repita
      se (contador % 4 = 0) entao
         escreval(contador)
      fimse
      contador := contador + 1
   ate (contador > 200)


fimalgoritmo