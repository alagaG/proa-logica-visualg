Algoritmo "gpt_09_15_ex4"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê as notas de 5 alunos e apresenta a média da sala.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 15/09/2025
Var
   nota: real
   somatorio: real
   media: real
   contador: inteiro

Inicio

   contador := 1
   enquanto (contador <= 5) faca
      escreval(numpcarac(contador)+". Insira a nota do aluno: (real)")
      leia(nota)
      escreval()

      somatorio := somatorio + nota
      contador := contador + 1
   fimenquanto

   media := somatorio / 5
   escreval("A média da turma é: "+numpcarac(media))

Fimalgoritmo