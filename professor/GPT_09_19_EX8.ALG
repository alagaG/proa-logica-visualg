Algoritmo "gpt_09_19_ex8"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : O usuário tentará acertar o número gerado pelo programa.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   gerado: inteiro
   numero: inteiro


Inicio
   gerado := 1 + randi(20)
   repita
      escreval("Qual o seu chute? (inteiro)")
      escreva("R: ")
      leia(numero)
      limpatela
      escreval("ERROU!")
   ate (numero = gerado)
   limpatela
   escreval("ACERTOU")
Fimalgoritmo