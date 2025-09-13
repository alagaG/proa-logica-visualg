algoritmo "manzano-ex5.1.1-1J"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a soma e média aritmética dos valores pares de
//               50 a 70.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   soma: inteiro
   media: real
   contador: inteiro

   LOOP_INICIO: inteiro
   LOOP_FINAL: inteiro
   LOOP_PASSO: inteiro

inicio
   LOOP_INICIO := 50
   LOOP_FINAL := 70
   LOOP_PASSO := 2

   contador := LOOP_INICIO
   enquanto (contador <= LOOP_FINAL) faca
      soma := soma + contador
      contador := contador + LOOP_PASSO
   fimenquanto

   media := soma / (LOOP_FINAL - LOOP_INICIO)
   escreval("A soma dos números é: " + numpcarac(soma))
   escreval("A média dos números é: " + numpcarac(media))


fimalgoritmo