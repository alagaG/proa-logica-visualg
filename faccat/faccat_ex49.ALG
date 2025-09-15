Algoritmo "FACCAT - Ex. 49"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 2 notas (0-10) e calcula a média delas.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   n1: real
   n2: real
   media: real
   loop: caracter

Inicio
   loop := "s"
   enquanto (loop = "s") faca
      escreval("Insira a primeira nota: (real)")
      leia(n1)

      enquanto ((n1 < 0) ou (n1 > 10)) faca
         escreval("Valor inválido! A entrada deve estar entre 0-10.")
         escreval()
         escreval("Insira a primeira nota: (real)")
         leia(n1)
      fimenquanto

      escreval()
      escreval("Insira a segunda nota: (real)")
      leia(n2)

      enquanto ((n2 < 0) ou (n2 > 10)) faca
         escreval("Valor inválido! A entrada deve estar entre 0-10.")
         escreval()
         escreval("Insira a segunda nota: (real)")
         leia(n2)
      fimenquanto

      media := (n1 + n2) / 2

      escreval()
      escreval("A média é: " + numpcarac(media))

      escreval()
      escreval("Novo cálculo? (S/N)")
      leia(loop)
      loop := minusc(loop)

      enquanto ((loop <> "s") e (loop <> "n")) faca
         escreval("Valor inválido! A entrada deve ser S (sim) ou N (não).")
         escreval()
         escreval("Novo cálculo? (S/N)")
         leia(loop)
         loop := minusc(loop)
      fimenquanto
      escreval()
   fimenquanto
Fimalgoritmo