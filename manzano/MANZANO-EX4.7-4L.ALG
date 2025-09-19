algoritmo "manzano-ex4.7-4l"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê o nome e o sexo de uma pessoa e a saúda de acordo.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   nome: caracter
   sexo: caracter

inicio
   escreval("Insira o seu nome: (caracter)")
   escreva("R: ")
   leia(nome)

   escreval("Insira o seu sexo: (F/M)")
   escreva("R: ")
   leia(sexo)
   sexo := minusc(sexo)

   se (sexo = "f") entao
      escreva("Ilma Sra. ")
      escreval(nome)
   senao
      escreva("Ilmo Sr. ")
      escreval(nome)
   fimse

fimalgoritmo