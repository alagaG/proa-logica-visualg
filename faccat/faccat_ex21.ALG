Algoritmo "FACCAT - Ex. 21"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a hora de início e encerramento de um jogo de xadrez,
//               calcula e o apresenta sabendo que um jogo pode começar em um
//               dia e terminar em outro.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   hora_inicio: inteiro
   hora_fim: inteiro
   duracao: inteiro
   
Inicio
   Escreva("Insira que horas o jogo começou: (inteiro) ")
   Leia(hora_inicio)
   Escreva("Insira que horas o jogo terminou: (inteiro) ")
   Leia(hora_fim)

   se (hora_inicio => hora_fim) entao
      duracao <- (hora_fim + 24) - hora_inicio
   senao
      duracao <- hora_fim - hora_inicio
   fimse
   
   Escreval("O jogo durou: ", duracao)

Fimalgoritmo