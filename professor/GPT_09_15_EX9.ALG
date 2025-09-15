Algoritmo "gpt_09_15_ex9"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 números e apresenta quantos são pares e quantos ímpares.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   contador: inteiro
   numero: inteiro
   numero_par: inteiro

Inicio
   para contador de 1 ate 10 faca
      escreval(numpcarac(contador)+". Insira um número: (inteiro)")
      leia(numero)
      se (numero mod 2 = 0) entao
         numero_par := numero_par + 1
      fimse
   fimpara
   
   escreval("Foram inseridos "+numpcarac(numero_par)+" pares")
   escreval("Foram inseridos "+numpcarac(10-numero_par)+" ímpares")

Fimalgoritmo