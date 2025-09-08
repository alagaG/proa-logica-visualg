Algoritmo "FACCAT - Ex. 40"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê as informações de um produto - nome, preço e quantidade
//               comprada. O objetivo é calcular o valor a ser pago considerando
//               o desconto baseado na quantidade vendida.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   produto_nome: caracter
   produto_quantidade: real
   produto_preco: real
   desconto: real
   preco_final: real
   
Inicio
   Escreva("Digite o nome do produto: (caracter) ")
   Leia(produto_nome)
   Escreva("Digite a quantidade comprada do produto: (real) ")
   Leia(produto_quantidade)
   Escreva("Digite o preço unitário do produto: (real) ")
   Leia(produto_preco)
   
   se (quantidade <= 5) entao
      desconto := 0.02
   senao
      se (quantidade <= 10) entao
         desconto := 0.3
      senao
         desconto := 0.5
      fimse
   fimse
   
   preco_final := produto_preco * (1.00 - desconto)
   se (quantidade > 0) entao
      Escreva("O valor a ser pago é de R$", preco_final)
   senao
      Escreva("A quantidade não pode ser negativa")
   fimse

Fimalgoritmo