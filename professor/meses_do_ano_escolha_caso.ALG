Algoritmo "professor-escolha-caso"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê um número e apresenta o mês respectivo.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/09/2025
Var
   // Seção de Declarações das variáveis
   mes_em_numero: inteiro
   mes_do_ano: caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("Insira um número: (inteiro)")
   Leia(mes_em_numero)

   escolha(mes_em_numero)
   caso 1
      mes_do_ano := "Janeiro"
   caso 2
      mes_do_ano := "Fevereiro"
   caso 3
      mes_do_ano := "Março"
   caso 4
      mes_do_ano := "Abril"
   caso 5
      mes_do_ano := "Maio"
   caso 6
      mes_do_ano := "Junho"
   caso 7
      mes_do_ano := "Julho"
   caso 8
      mes_do_ano := "Agosto"
   caso 9
      mes_do_ano := "Setembro"
   caso 10
      mes_do_ano := "Outubro"
   caso 11
      mes_do_ano := "Novembro"
   caso 12
      mes_do_ano := "Dezembro"
   outrocaso
      mes_do_ano := "Nenhum"
   fimescolha

   se (mes_do_ano <> "Nenhum") entao
      Escreva("O mês do ano é ", mes_do_ano
   senao
      Escreva("O número não representa um mês do ano (1-12)")
   fimse


Fimalgoritmo