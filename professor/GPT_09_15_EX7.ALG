Algoritmo "gpt_09_15_ex7"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e apresenta seu fatorial.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   numero: inteiro
   contador: inteiro
   fatorial: inteiro

Inicio
   escreval("Insira um número: (inteiro)")
   leia(numero)

   contador := 1
   fatorial := 1
   enquanto (contador <= numero) faca
      fatorial := fatorial * contador
      contador := contador + 1
   fimenquanto
   escreval("O fatorial deste número é: "+numpcarac(fatorial))

Fimalgoritmo