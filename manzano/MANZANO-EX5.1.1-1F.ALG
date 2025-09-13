algoritmo "manzano-ex5.1.1-1F"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a exponênciação de um número pelo intervalo
//               de 0-15.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025

var
   numero: inteiro
   expo: inteiro
   contador: inteiro
   resultado: inteiro

inicio
   escreval("Insira o número a elevar: (inteiro)")
   leia(numero)
   escreval("Insira o exponensiador: (inteiro)")
   leia(expo)

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