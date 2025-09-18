algoritmo "manzano-ex3.9-7c"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê os dados de uma lata de óleo e retorna seu volume.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
raio: real
altura: real
volume: real

inicio
escreval("Insira o raio da lata: (real)")
escreva("R: ")
leia(raio)

escreval("Insira a altura da lata: (real)")
escreva("R: ")
leia(altura)

volume := PI * (raio * raio) * altura
escreval("O volume da lata é: "+numpcarac(volume))

fimalgoritmo