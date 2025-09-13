algoritmo "manzano-ex5.1.1-1G"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta n números da sequência de fibonacci.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   numero: inteiro
   n1: inteiro
   n2: inteiro
   n3: inteiro
   contador: inteiro

inicio
   escreval("Insira quantos números devem ser gerados: (inteiro)")
   leia(numero)


   enquanto (contador < numero) faca
      se (n1 = 0) entao
         n1 := 1
      senao
         se (n2 = 0) entao
            n2 := 1
         senao
            n3 := n2
            n2 := n1
            n1 := n2 + n3
         fimse
      fimse
      escreval("N" + numpcarac(contador) + ": " + numpcarac(n1))
      contador := contador + 1
   fimenquanto

fimalgoritmo