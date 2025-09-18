algoritmo "manzano-ex4.7-4c"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 4 notas, avalia e apresenta o desempenho do aluno.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   nota1: real
   nota2: real
   nota3: real
   nota4: real
   media: real

inicio
   escreval("Insira a 1° nota: (real)")
   escreva("R: ")
   leia(nota1)

   escreval("Insira a 2° nota: (real)")
   escreva("R: ")
   leia(nota2)

   escreval("Insira a 3° nota: (real)")
   escreva("R: ")
   leia(nota3)

   escreval("Insira a 4° nota: (real)")
   escreva("R: ")
   leia(nota4)

   media := (nota1 + nota2 + nota3 + nota4) / 4

   escreval()
   se (media >= 5) entao
      escreval("ALUNO APROVADO")
   senao
      escreval("ALUNO REPROVADO")
   fimse
   escreval("A média foi: "+numpcarac(media))

fimalgoritmo