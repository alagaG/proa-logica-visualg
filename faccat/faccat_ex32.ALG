Algoritmo "FACCAT - Ex. 32"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê os nomes e gols de dois times em uma partida e apresenta
//               o resultado - o nome do vencedor ou "EMPATE".
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   time_A_nome: caracter
   time_A_gols: inteiro
   time_B_nome: caracter
   time_B_gols: inteiro

Inicio
   Escreva("Insira o nome do time A: (caracter) ")
   Leia(time_A_nome)
   Escreva("Insira o número de gols marcados pelo time A: (real) ")
   Leia(time_A_gols)
   Escreva("Insira o nome do time B: (caracter) ")
   Leia(time_B_nome)
   Escreva("Insira o número de gols marcados pelo time B: (real) ")
   Leia(time_B_gols)

   se (time_A_gols > time_B_gols) entao
      Escreva("O time vencedor é: ", time_A_nome)
   senao
      se (time_B_gols > time_A_gols) entao
         Escreva("O time vencedor é: ", time_B_nome)
      senao
         Escreva("A partida terminou em EMPATE")
      fimse
   fimse

Fimalgoritmo