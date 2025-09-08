Algoritmo "FACCAT - Ex. 37"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a peso de morangos e maçãs compradas pelo usuário
//               e exibe o preço calculado com os descontos por peso.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   entrada_morango: real
   entrada_maca: real
   preco_morango: real
   preco_maca: real
   preco_total: real

Inicio
   Escreva("Insira a quantidade de morango comprada em kilos: (real)")
   Leia(entrada_morango)
   Escreva("Insira a quantidade de maçã comprada em kilos: (real)")
   Leia(entrada_maca)
   
   se (entrada_morango <= 5) entao
      preco_morango := entrada_morango * 2.50
   senao
      preco_morango := entrada_morango * 2.20
   fimse
   
   se (entrada_maca <= 5) entao
      preco_maca := entrada_maca * 2.20
   senao
      preco_maca := entrada_maca * 1.50
   fimse
   
   preco_total := preco_morango + preco_maca
   se (entrada_morango + entrada_maca > 8) entao
      preco_total := preco_total * 0.90
   senao
      se (preco_total > 25) entao
         preco_total := preco_total * 0.90
      fimse
   fimse
   
   Escreva("O valor a ser pago é de: ", preco_total)

Fimalgoritmo