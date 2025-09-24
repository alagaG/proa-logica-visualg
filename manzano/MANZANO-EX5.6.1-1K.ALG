algoritmo "manzano-ex5.6.1-1k"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta o fatorial dos ímpares entre 1 e 10
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   fatorial: inteiro
   contador: inteiro

inicio
   fatorial := 1
   para contador de 1 ate 10 faca
      fatorial := fatorial * contador
      se (contador % 2 = 1) entao
         escreval(numpcarac(contador)+"! = "+numpcarac(fatorial))
      fimse
   fimpara

fimalgoritmo