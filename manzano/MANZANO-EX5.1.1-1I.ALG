algoritmo "manzano-ex5.1.1-1I"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 valores e apresenta sua soma e média aritmética.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   numero: real
   soma: real
   media: real
   contador: inteiro

   QUANTIDADE: inteiro

inicio
   QUANTIDADE := 10

   enquanto (contador < QUANTIDADE) faca
      escreval("Insira um número: (real)")
      leia(numero)
      soma := soma + numero
      contador := contador + 1
   fimenquanto

   media := soma / QUANTIDADE
   escreval("A soma dos números é: " + numpcarac(soma))
   escreval("A média dos números é: " + numpcarac(media))


fimalgoritmo