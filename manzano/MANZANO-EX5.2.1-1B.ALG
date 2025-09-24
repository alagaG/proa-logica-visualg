algoritmo "manzano-ex5.2.1-1b"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta o somatórios dos valores pares entre 1 e 500.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   somatorio: inteiro
   contador: inteiro

inicio
   contador := 1
   repita
      se (contador % 2 = 0) entao
         somatorio := somatorio + contador
      fimse
      contador := contador + 1
   ate (contador > 500)

   escreval(somatorio)

fimalgoritmo