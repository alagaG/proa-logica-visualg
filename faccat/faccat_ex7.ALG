Algoritmo "FACCAT - Ex. 7"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê a idade de alguém em anos, meses e dias e retorno apenas em
//               dias
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 29/08/2025
Var
// Seção de Declarações das variáveis
   idade_anos : inteiro
   idade_meses : inteiro
   idade_dias : inteiro
   idade_dias_total : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Escreva("Digite os anos da sua idade: ")
   Leia(idade_anos)
   Escreva("Digite os meses da sua idade: ")
   Leia(idade_meses)
   Escreva("Digite os dias da sua idade: ")
   Leia(idade_dias)
   idade_dias_total <- idade_dias + idade_meses * 30 + idade_anos * 365
   Escreva("Sua idade em dias é de:", idade_dias_total)

Fimalgoritmo