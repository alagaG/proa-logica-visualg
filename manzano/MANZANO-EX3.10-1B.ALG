algoritmo "manzano-ex3.10-1b"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um salário mensal e seu valor de reajuste para apresentar
//               o novo salário reajustado.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
sm: real
pr: real
ns: real

inicio
escreval("Insira o valor do salário mensal: (real)")
escreva("R: R$")
leia(sm)

escreval("Insira o valor do reajuste salarial (%) : (real)")
escreva("R: ")
leia(pr)

ns := sm * (1 + pr / 100)
escreval("O novo salário é: "+numpcarac(ns))

fimalgoritmo