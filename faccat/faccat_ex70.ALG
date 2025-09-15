Algoritmo "FACCAT - Ex. 70"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 100 números e apresenta o menor e o maior número.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   contador: inteiro
   numero: real
   numero_maior: real
   numero_menor: real

Inicio
   numero_menor := 2147483647

   para contador de 1 ate 100 faca
      escreval("Insira o "+numpcarac(contador)+"° número: (real)")
      leia(numero)

      se (numero > numero_maior) entao
         numero_maior := numero
      fimse
      
      se (numero < numero_menor) entao
         numero_menor := numero
      fimse
      escreval()
   fimpara
   escreval("O maior número digitado foi: "+numpcarac(numero_maior))
   escreval("O menor número digitado foi: "+numpcarac(numero_menor))

Fimalgoritmo