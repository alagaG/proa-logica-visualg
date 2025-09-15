Algoritmo "FACCAT - Ex. 68"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê a quantidade e preço de mercadorias em estoque a apresenta
//               o valor total e a média de preço delas.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   quantidade: inteiro
   contador: inteiro
   valor: real
   valor_total: real
   valor_media: real

Inicio
   escreval("Insira a quantidade de mercadorias: (inteiro)")
   leia(quantidade)

   contador := 1
   enquanto (contador <= quantidade) faca
      escreval()
      escreval("Insira o valor da "+numpcarac(contador)+"° mercadoria: (real)")
      escreva("R$")
      leia(valor)
      
      valor_total := valor_total + valor
      valor_media := valor_media + (valor / quantidade)
      
      contador := contador + 1
   fimenquanto
   
   escreval()
   escreval("A soma total de valores é: R$"+numpcarac(valor_total))
   escreval("A média dos valores somados é: R$"+numpcarac(valor_media))

Fimalgoritmo