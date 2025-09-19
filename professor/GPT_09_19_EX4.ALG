Algoritmo "gpt_09_19_ex4"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Conta de 10 a 1.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   contador: inteiro

Inicio
   contador := 10
   repita
      escreval(contador)
      contador := contador - 1
   ate (contador <= 0)
   escreval("Feliz Ano Novo!")

Fimalgoritmo