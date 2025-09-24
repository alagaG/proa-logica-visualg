algoritmo "manzano-ex5.6.1-1j"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Apresenta a conversão de múltiplos de 10 entre 10 e 100 de
//               graus celsius para fahrenheit.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
convertido: real
contador: inteiro

inicio
para contador de 10 ate 100 passo 10 faca
   convertido := (contador * 9 + 160) / 5
   escreval(numpcarac(contador)+"C° = "+numpcarac(convertido)+"F")
fimpara

fimalgoritmo