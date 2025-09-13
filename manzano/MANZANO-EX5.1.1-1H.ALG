algoritmo "manzano-ex5.1.1-1H"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta um intervalos (10-100) de graus Celsius sendo
//               convertidos para Fahrenheit.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025

funcao grausGpF(graus:real): real
inicio
   retorne ((9 * graus + 160) / 5)
fimfuncao

var
   contador: inteiro

   LOOP_INICIO: inteiro
   LOOP_FINAL: inteiro
   LOOP_PASSO: inteiro

inicio
   LOOP_INICIO := 10
   LOOP_FINAL := 100
   LOOP_PASSO := 10

   contador := LOOP_INICIO
   enquanto (contador <= LOOP_FINAL) faca
      escreval(numpcarac(contador) + "C° = " + numpcarac(grausGpF(contador)) + "F")
      contador := contador + LOOP_PASSO
   fimenquanto

fimalgoritmo