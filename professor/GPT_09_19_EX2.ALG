Algoritmo "gpt_09_19_ex2"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê números até que a soma chegue a 100.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   numero: inteiro
   soma: inteiro

Inicio
   repita
      escreval("Insira um número: (inteiro)")
      escreva("R: ")
      leia(numero)
      soma := soma + numero
      
      escreval("Soma: "+numpcarac(soma))
      escreval()
   ate (soma > 100)

Fimalgoritmo