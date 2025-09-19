algoritmo "manzano-ex4.7-4g"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 4 valores e identifica os divisíveis por 2 e 3
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   num1: inteiro
   num2: inteiro
   num3: inteiro
   num4: inteiro
   divisivel2: logico
   divisivel3: logico
   
inicio
escreval("Insira o 1° número: (inteiro)")
escreva("R: ")
leia(num1)

escreval("Insira o 2° número: (inteiro)")
escreva("R: ")
leia(num2)

escreval("Insira o 3° número: (inteiro)")
escreva("R: ")
leia(num3)

escreval("Insira o 4° número: (inteiro)")
escreva("R: ")
leia(num4)

escreval()
escreval("Divisíveis por 2 e 3: ")

divisivel2 := num1 % 2 = 0
divisivel3 := num1 % 3 = 0
se (divisivel2 e divisivel3) entao
     escreval(num1)
fimse

divisivel2 := num2 % 2 = 0
divisivel3 := num2 % 3 = 0
se (divisivel2 e divisivel3) entao
     escreval(num2)
fimse

divisivel2 := num3 % 2 = 0
divisivel3 := num3 % 3 = 0
se (divisivel2 e divisivel3) entao
     escreval(num3)
fimse

divisivel2 := num4 % 2 = 0
divisivel3 := num4 % 3 = 0
se (divisivel2 e divisivel3) entao
     escreval(num4)
fimse

fimalgoritmo