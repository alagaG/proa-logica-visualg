Algoritmo "gpt_09_19_ex6"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e apresenta sua tabuada.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   numero: inteiro
   multi: inteiro
   contador: inteiro

Inicio
   escreval("Insira um número: (inteiro)")
   escreva("R: ")
   leia(numero)

   contador := 1
   repita
      multi := numero * contador
      escreval(numpcarac(numero) + " x " + numpcarac(contador) + " = " + numpcarac(multi))
      contador := contador + 1
   ate (contador > 10)

Fimalgoritmo