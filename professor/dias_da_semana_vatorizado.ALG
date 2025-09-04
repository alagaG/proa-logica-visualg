Algoritmo "dias_da_semana_vetorizado"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê um número e apresenta o respectivo dia da semana ou uma
//               outra mensagem em caso de erro.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis 
   numero: inteiro
   dias_da_semana: vetor[1..7] de caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   dias_da_semana[1] := "Domingo"
   dias_da_semana[2] := "Segunda-feira"
   dias_da_semana[3] := "Terça-feira"
   dias_da_semana[4] := "Quarta-feira"
   dias_da_semana[5] := "Quinta-feira"
   dias_da_semana[6] := "Sexta-feira"
   dias_da_semana[7] := "Sábado"

   Escreva("Insira um número: (inteiro) ")
   Leia(numero)

   se (numero < 1) entao
      Escreva("Número menor que 1! Insira um número entre 1 e 7")
   senao
      se (numero > 7) entao
         Escreva("Número maior 7! Insira um número entre 1 e 7")
      senao
         Escreva("O dia da semana é: ", dias_da_semana[numero])
      fimse
   fimse

Fimalgoritmo