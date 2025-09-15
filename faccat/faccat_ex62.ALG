Algoritmo "FACCAT - Ex. 62"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê as notas de uma turma e calcula a média dela.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   quantidade: inteiro
   nota: real
   somatorio: real
   contador: real

Inicio
   escreval("Insira a quantidade de alunos na sala: (inteiro)")
   leia(quantidade)
   escreval()

   contador := 1
   enquanto (contador <= quantidade) faca
      escreval()
      escreval(numpcarac(contador) + ". Insira a nota média do aluno: (real)")
      leia(nota)
      somatorio := somatorio + nota
      contador := contador + 1
   fimenquanto

   escreval()
   escreval("A média aritmética da turma é: " + numpcarac(somatorio / quantidade))
Fimalgoritmo