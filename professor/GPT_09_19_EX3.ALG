Algoritmo "gpt_09_19_ex3"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Pede uma senha ao usuário até que ele acerte.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   senha: caracter

Inicio
   repita
      escreval("Por favor, insira sua senha: (caracter)")
      escreva("R: ")
      leia(senha)
      limpatela()
      escreval("SENHA INCORRETA")
   ate (senha = "1234")
   limpatela()
   escreval("SENHA CORRETA")
   escreval("Até a próxima ;)")

Fimalgoritmo