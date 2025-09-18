algoritmo "manzano-ex3.9-7g"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 4 números e realiza somas e multiplicações com base na
//               propriedade distributiva.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   valor_A: real
   valor_B: real
   valor_C: real
   valor_D: real

inicio
   escreval("Insira o valor de A: (real)")
   escreva("R: ")
   leia(valor_A)

   escreval("Insira o valor de B: (real)")
   escreva("R: ")
   leia(valor_B)

   escreval("Insira o valor de C: (real)")
   escreva("R: ")
   leia(valor_C)

   escreval("Insira o valor de D: (real)")
   escreva("R: ")
   leia(valor_D)

   escreval()
   escreval("= SOMAS")
   escreval("A + B = "+numpcarac(valor_A + valor_B))
   escreval("A + C = "+numpcarac(valor_A + valor_C))
   escreval("A + D = "+numpcarac(valor_A + valor_D))
   escreval("B + C = "+numpcarac(valor_B + valor_C))
   escreval("B + D = "+numpcarac(valor_B + valor_D))
   escreval("C + D = "+numpcarac(valor_C + valor_D))
   escreval("= MULTIPLICAÇÕES")
   escreval("A x B = "+numpcarac(valor_A * valor_B))
   escreval("A x C = "+numpcarac(valor_A * valor_C))
   escreval("A x D = "+numpcarac(valor_A * valor_D))
   escreval("B x C = "+numpcarac(valor_B * valor_C))
   escreval("B x D = "+numpcarac(valor_B * valor_D))
   escreval("C x D = "+numpcarac(valor_C * valor_D))

fimalgoritmo