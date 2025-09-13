algoritmo "manzano-ex5.1.1-1E"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a exponênciação de 3 pelo intervalo de 0-15.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025

var
   numero: inteiro
   expo: inteiro
   contador: inteiro
   resultado: inteiro

inicio
   numero := 3
   expo := 15
   enquanto (contador <= expo) faca
      se (contador = 0) entao
         resultado := 1
      senao
         resultado := resultado * numero
      fimse

      escreval(numpcarac(numero) + " ^ " + numpcarac(contador) + " = " + numpcarac(resultado))
      contador := contador + 1
   fimenquanto
fimalgoritmo