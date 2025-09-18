algoritmo "manzano-ex3.9-7i"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Calcula o quadrado da diferença de 2 valores, A por B.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
valor_A: real
valor_B: real
resultado: real

inicio
escreval("Insira o valor de A: (real)")
escreva("R: ")
leia(valor_A)

escreval("Insira o valor de B: (real)")
escreva("R: ")
leia(valor_B)

resultado := (valor_A - valor_B) * (valor_A - valor_B)
escreval("O resultado é: "+numpcarac(resultado))

fimalgoritmo