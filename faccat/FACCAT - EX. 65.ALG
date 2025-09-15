Algoritmo "FACCAT - Ex. 66"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 2 números e apresenta os números nesse intervalo.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   loop_inicio: inteiro
   loop_final: inteiro
   contador: inteiro

Inicio
   escreval("Insira o número onde o loop vai começar: (inteiro)")
   leia(loop_inicio)

   escreval()
   escreval("Insira o número onde o loop vai terminar: (inteiro)")
   leia(loop_final)

   enquanto (loop_final < loop_inicio) faca
      escreval("Valor inválido! O final do loop deve ser maior que o inicio.")
      escreval()
      escreval("Insira o número onde o loop vai terminar: (inteiro)")
      leia(loop_final)
   fimenquanto

   escreval()
   contador := loop_inicio
   enquanto (contador <= loop_final) faca
      escreval("N: " + numpcarac(contador))
      contador := contador + 1
   fimenquanto

Fimalgoritmo