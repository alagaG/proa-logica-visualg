Algoritmo "FACCAT - Ex. 16"
// Disciplina  : [Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Lê a quantidade de maçãs compradas e retorna o valor total
//               delas considerando um desconto por quantidade.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis 
   quantidade: inteiro
   preco_total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Quantas maçãs foram compradas?")
   Leia(quantidade)
   se (quantidade >= 12) entao
      preco_total <- quantidade * 1.00
   senao
      preco_total <- quantidade * 1.30
   fimse
   Escreva("O preço total é: R$", preco_total:2:2)

Fimalgoritmo