algoritmo "manzano-ex3.9-7j"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Realiza a conversão de X quantidade de dólares em Y reais.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
valor_US: real
valor_BR: real
cambio: real

inicio
escreval("Insira o valor de câmbio (US = BRL): (real)")
escreva("R: ")
leia(cambio)

escreval("Insira a quantia de dólares a serem convertidos: (real)")
escreva("R: ")
leia(valor_US)

valor_BR := valor_US * cambio
escreval()
escreval("= Resultado")
escreval("Dólares: $"+numpcarac(valor_US))
escreval("Reais: R$"+numpcarac(valor_BR))

fimalgoritmo