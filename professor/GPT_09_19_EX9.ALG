Algoritmo "gpt_09_19_ex9"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : O usuário tentará acertar o número gerado pelo programa.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   numero: inteiro
   pares: inteiro

Inicio
   repita
      escreval("Insira um número (inteiro)")
      escreva("R: ")
      leia(numero)
      limpatela

      se (numero % 2 = 0) entao
         pares := pares + 1
      fimse
   ate (numero = 0)
   limpatela
   escreval("Foram digitados "+numpcarac(pares)+" números pares")
Fimalgoritmo