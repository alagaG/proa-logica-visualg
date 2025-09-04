Algoritmo "FACCAT - Ex. 26"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a quantidade em estoque, capacidade máxima e mínima de um
//               produto. Calcula e exibe a quantidade média e avaliar a
//               disponibilidade de venda.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   estoque_atual: inteiro
   estoque_minimo: inteiro
   estoque_maximo: inteiro
   estoque_media: real
   
Inicio
   Escreva("Insira a quantidade atual em estoque: (inteiro) ")
   Leia(estoque_atual)
   Escreva("Insira a capacidade máxima de estoque: (inteiro) ")
   Leia(estoque_minimo)
   Escreva("Insira a capacidade mínima de estoque: (inteiro) ")
   Leia(estoque_maximo)
   
   estoque_media := (estoque_maximo + estoque_minimo) / 2
   Escreva("A média de estoque desse produto é: ", estoque_media)

   se (estoque_media <= estoque_atual) entao
      Escreva("Efetuar compra")
   senao
      Escreva("Não efetuar compra")
   fimse


Fimalgoritmo