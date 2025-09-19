Algoritmo "gpt_09_19_ex10"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e exibe seu fatorial.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   numero: inteiro
   contador: inteiro
   fatorial: inteiro

Inicio
   escreval("Insira um número: (inteiro)")
   escreva("R: ")
   leia(numero)

   contador := 1
   fatorial := 1
   repita
      fatorial := fatorial * contador
      contador := contador + 1
   ate (contador > numero)

   escreval(numpcarac(numero)+"! = "+numpcarac(fatorial))
Fimalgoritmo