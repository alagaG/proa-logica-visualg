algoritmo "manzano-ex5.2.1-1e"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 15 inteiros e apresenta a soma de seus fatoriais.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   numero: inteiro
   fatorial: real
   somatorio: real
   contador1: inteiro
   contador2: inteiro

inicio
   contador1 := 1
   repita
      escreval("Insira o " + numpcarac(contador1) + "° número: (inteiro)")
      leia(numero)

      fatorial := 1
      contador2 := 1
      repita
         fatorial := fatorial * contador2
         contador2 := contador2 + 1
      ate (contador2 > numero)

      escreval("Fatorial: " + numpcarac(fatorial))
      escreval
      
      somatorio := somatorio + fatorial
      contador1 := contador1 + 1
   ate (contador1 > 15)

   escreval("A soma é: " + numpcarac(somatorio))
fimalgoritmo