algoritmo "manzano-ex5.2.1-1i"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê números positivos indefinidamente até que seja apresentado
//               um negativo então retorna o maior e o menor números inseridos.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   numero: real
   min: real
   max: real

inicio
   min := -1
   repita
      escreval("Insira um número: (real)")
      leia(numero)
      escreval

      se (numero >= 0) entao
         se (numero > max) entao
            max := numero
         fimse
         se ((numero < min) ou (min < 0)) entao
            min := numero
         fimse
      fimse
   ate (numero < 0)

   escreval("Maior: "+numpcarac(max))
   escreval("Menor: "+numpcarac(min))

fimalgoritmo