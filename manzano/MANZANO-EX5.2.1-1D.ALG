algoritmo "manzano-ex5.2.1-1d"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Calcula a quantidade de grãos em um tabuleiro de xadrez onde
//               cada quadrado recebe o dobro do anterior.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   potencia: real
   acumulador: real
   contador: inteiro

inicio
   potencia := 1
   contador := 0
   repita
      acumulador := acumulador + potencia
      potencia := potencia * 2
      contador := contador + 1
      escreval(acumulador)
   ate (contador > 64)

fimalgoritmo