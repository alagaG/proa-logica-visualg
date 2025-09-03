Algoritmo "FACCAT - Ex. 8"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê a quantidade de votos brancos, nulos e válidos e retorna o
//               percentual de cada um em relação ao total.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis
   quantidade_branco : inteiro
   quantidade_nulo : inteiro
   quantidade_valido : inteiro
   quantidade_total : inteiro
   percentual_branco : inteiro
   percentual_nulo : inteiro
   percentual_valido : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Escreva("Digite a quantidade de votos em branco: ")
   Leia(quantidade_branco)
   Escreva("Digite a quantidade de votos nulos: ")
   Leia(quantidade_nulo)
   Escreva("Digite a quantidade de votos válidos: ")
   Leia(quantidade_valido)
   quantidade_total <- quantidade_branco + quantidade_nulo + quantidade_valido
   se (quantidade_total > 0) entao
      percentual_branco <- Int(quantidade_branco / quantidade_total * 100)
      percentual_nulo <- Int(quantidade_nulo / quantidade_total * 100)
      percentual_valido <- Int(quantidade_valido / quantidade_total * 100)
      Escreva("Percentuais:", percentual_branco, "% Brancos |", percentual_nulo, "% Nulos |", percentual_valido, "% Válidos")
   senao
      Escreva("O total de votos foi igual ou inferior a 0")
   fimse

Fimalgoritmo