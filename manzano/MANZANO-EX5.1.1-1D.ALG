algoritmo "manzano-ex5.1.1-1D"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a soma de todos os números ímpares dentro de um
//               intervalo
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
       se (temp % 2 = 1) entao
       escreval(temp)
          soma := soma + temp
       fimse
      temp := temp + 2
   fimenquanto
   escreval(soma)
fimalgoritmo