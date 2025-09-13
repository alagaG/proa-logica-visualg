algoritmo "manzano-ex5.1.1-1B"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a soma de todos os números dentro de um intervalo
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025

var
   comeco: inteiro
   final: inteiro
   temp: inteiro
   soma: inteiro

inicio
   escreval("Insira o início do intervalo: (inteiro)")
   leia(comeco)
   escreval("Insira o fim do intervalo: (inteiro)")
   leia(final)

   se (comeco > final) entao
      temp := final
      final := comeco
      comeco := temp
   fimse

   temp := comeco
   enquanto (temp <= final) faca
      soma := soma + temp
      temp := temp + 1
   fimenquanto
   escreval(soma)
fimalgoritmo