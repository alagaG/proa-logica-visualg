Algoritmo "FACCAT - Ex. 47"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê dois números e apresenta sua divisão. O segundo número não
//               poderá ser igual a 0.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   dividendo: real
   divisor: real
   quociente: real

Inicio
   escreval("Insira o valor do dividendo: (real)")
   leia(dividendo)

   enquanto (divisor = 0) faca
      escreval()
      escreval("Insira o valor do divisor: (real != 0)")
      leia(divisor)
      se (divisor = 0) entao
           escreval("VALOR INVÁLIDO")
      fimse
   fimenquanto
   
   quociente := dividendo / divisor
   
   escreval()
   escreval("O quociente é: " + numpcarac(quociente))

Fimalgoritmo