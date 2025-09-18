algoritmo "manzano-ex4.7-4e"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 3 valores presentes em uma equação de 2° grau e retorna as
//               2 raízes se possível.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   num_a: real
   num_b: real
   num_c: real
   delta: real
   raiz1: real
   raiz2: real

inicio
   escreval("Insira o valor de A: (real)")
   escreva("R: ")
   leia(num_a)

   escreval("Insira o valor de B: (real)")
   escreva("R: ")
   leia(num_b)

   escreval("Insira o valor de C: (real)")
   escreva("R: ")
   leia(num_c)

   escreval()
   se (num_a <> 0) entao
      delta := num_b * num_b - 4 * num_a * num_c
      se (delta >= 0) entao
         raiz1 := (-num_b + raizq(delta)) / (2 * num_a)
         raiz2 := (-num_b - raizq(delta)) / (2 * num_a)
         escreval("SUCESSO!")
         escreval("1° Raíz: "+numpcarac(raiz1))
         escreval("2° Raíz: "+numpcarac(raiz2))
      senao
              escreval("ERRO! 'delta' possui um valor negativo")
      fimse
   senao
      escreval("ERRO! 'A' não pode ser igual a 0")
   fimse

fimalgoritmo