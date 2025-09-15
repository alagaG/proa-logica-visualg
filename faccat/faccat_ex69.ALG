Algoritmo "FACCAT - Ex. 69"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê a quantidade e preço de mercadorias em estoque a apresenta
//               o valor total e a média de preço delas.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   ativo: logico
   continuidade: caracter
   quantidade: inteiro
   valor: real
   valor_total: real
   valor_media: real

Inicio
   ativo := verdadeiro
   enquanto (ativo) faca
      escreval("Insira o valor da "+numpcarac(quantidade + 1)+"° mercadoria: (real)")
      escreva("R$")
      leia(valor)

      valor_total := valor_total + valor
      quantidade := quantidade + 1

      escreval()
      escreval("Mais mercadorias? (S/N)")
      leia(continuidade)
      minusc(continuidade)

      escreval()
      ativo := continuidade = "s"
   fimenquanto
   valor_media := valor_total / quantidade

   escreval("A soma total de valores é: R$"+numpcarac(valor_total))
   escreval("A média dos valores somados é: R$"+numpcarac(valor_media))

Fimalgoritmo