Algoritmo "professor-escolha-caso"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e apresenta o dia da semana.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/09/2025
Var
   // Seção de Declarações das variáveis
   dia_em_numero: inteiro
   dia_da_semana: caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("Insira um número: (inteiro)")
   Leia(dia_em_numero)

   escolha(dia_em_numero)
   caso 1
      dia_da_semana := "Domingo"
   caso 2
      dia_da_semana := "Segunda"
   caso 3
      dia_da_semana := "Terça"
   caso 4
      dia_da_semana := "Quarta"
   caso 5
      dia_da_semana := "Quinta"
   caso 6
      dia_da_semana := "Sexta"
   caso 7
      dia_da_semana := "Sábado"
   outrocaso
      dia_da_semana := "Nenhum"
   fimescolha

   se (dia_da_semana <> "Nenhum") entao
      Escreva("O dia da semana é ", dia_da_semana)
   senao
      Escreva("O número não representa um dia da semana (1-7)")
   fimse


Fimalgoritmo