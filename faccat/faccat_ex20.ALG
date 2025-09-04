Algoritmo "FACCAT - Ex. 20"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê dois valores e os escreve em ordem crescente. (Autor:
//               considere que não serão lidos valores iguais)
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   valor_A: real
   valor_B: real
   
Inicio
      Escreva("Insira o valor de A: (real) ")
      Leia(valor_A)
      Escreva("Insira o valor de B: (real) ")
      Leia(valor_B)
      
      se (valor_B > valor_A) entao
         Escreva(valor_A, "(A)", valor_B, "(B)")
      senao
         Escreva(valor_B, "(B)", valor_A, "(A)")
      fimse

Fimalgoritmo