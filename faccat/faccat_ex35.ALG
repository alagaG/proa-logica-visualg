Algoritmo "FACCAT - Ex. 35"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê o tipo de cosbustível e a quantidade vendida e retorna o
//               preço a ser pago pelo cliente segundo a tabela de preços.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   entrada_tipo: caracter
   entrada_quantidade: real
   tipo_preco: real
   tipo_desconto: real
   preco: real

Inicio
   Escreva("Insira o tipo de combustível desejado: (G - gasolina | A - álcool) ")
   Leia(entrada_tipo)
   Escreva("Insira a quantidade comprada: (real) ")
   Leia(entrada_quantidade)
   
   se (entrada_tipo = "G") entao
      tipo_preco := 3.30
      se (entrada_quantidade <= 20) entao
         tipo_desconto := 0.03
      senao
         tipo_desconto := 0.05
      fimse
   senao
      se (entrada_tipo = "A") entao
         tipo_preco := 2.90
         se (entrada_quantidade <= 20) entao
            tipo_desconto := 0.04
         senao
            tipo_desconto := 0.06
         fimse
      senao
         tipo_preco := 0
         tipo_desconto := 0
      fimse
   fimse
   
   se (tipo_preco = 0) entao
      Escreva("Tipo de combustível inválido")
   senao
      preco := entrada_quantidade * tipo_preco * (1.00 - tipo_desconto)
      Escreva("O preço a ser pago é de: ", preco)
   fimse
   
   
Fimalgoritmo