algoritmo "manzano-ex3.9-7e"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Calcula e apresenta o valor de uma prestação em atraso.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor_base: real
   taxa: real
   tempo_atraso: inteiro
   prestacao: real

inicio
   escreval("Insira o valor base da prestação: (real)")
   escreva("R: ")
   leia(valor_base)

   escreval("Insira a taxa por atraso: (real)")
   escreva("R: ")
   leia(taxa)

   escreval("Insira o tempo de atraso em dias: (inteiro)")
   escreva("R: ")
   leia(tempo_atraso)

   prestacao := valor_base + (valor_base * (taxa / 100) * tempo_atraso)
   escreval("O valor taxado da prestação é: "+numpcarac(prestacao))

fimalgoritmo