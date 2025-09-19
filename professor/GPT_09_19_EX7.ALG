Algoritmo "gpt_09_19_ex7"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê notas indefinidademente e apresenta sua média.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 19/09/2025
Var
   nota: real
   acumulador: real
   quantidade: inteiro
   media: real

Inicio
   repita
      escreval("Insira a "+numpcarac(quantidade + 1)+"° nota: (real)")
      escreva("R: ")
      leia(nota)

      se (nota >= 0) entao
         acumulador := acumulador + nota
         quantidade := quantidade + 1
      fimse
   ate (nota < 0)
   media := acumulador / quantidade
   media := int(media * 100) / 100
   escreval("A média final é: "+numpcarac(media))

Fimalgoritmo