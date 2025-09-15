Algoritmo "FACCAT - Ex. 60"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 10 números e apresenta quantos estão dentro de um intervalo.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   numero: inteiro
   validos: inteiro
   contador: inteiro

Inicio
   para contador de 1 ate 10 faca
      escreval(numpcarac(contador) + ". Insira um número: (inteiro)")
      leia(numero)
      escreval()

      se ((numero >= 10) e (numero <= 20)) entao
         validos := validos + 1
      fimse
   fimpara
   
   escreval(numpcarac(validos) + " números dentro do intervalo (10-20).")
   escreval(numpcarac(10 - validos) + " números fora do intervalo (10-20).")

Fimalgoritmo