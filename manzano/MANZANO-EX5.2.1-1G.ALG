algoritmo "manzano-ex5.2.1-1g"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta os fatoriais dos valores ímpares entre 1 e 10.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   fatorial: real
   contador1: inteiro
   contador2: inteiro

inicio
   contador1 := 1
   repita
      fatorial := 1
      contador2 := 1
      repita
         fatorial := fatorial * contador2
         contador2 := contador2 + 1
      ate (contador2 > contador1)

      escreval(fatorial)
      contador1 := contador1 + 1
   ate (contador1 > 10)

fimalgoritmo