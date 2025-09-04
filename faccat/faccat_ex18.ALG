Algoritmo "FACCAT - Ex. 18"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê o ano atual e o ano de nascimento de alguém retornando se
//               essa pessoa pode votar.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis 
   ano_atual: inteiro
   ano_nascimento: inteiro
   idade: inteiro
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira o ano atual: (inteiro) ")
   Leia(ano_atual)
   Escreva("Insira o ano em que nasceu: (inteiro) ")
   Leia(ano_nascimento)
   
   idade <- ano_atual - ano_nascimento
   Escreval("Sua idade é de: ", idade)
   
   se (idade < 16) entao
      Escreva("Você não pode votar ainda")
   senao
      se (idade < 18) entao
         Escreva("Você pode votar sem obrigatoriedade")
      senao
         Escreva("Você pode e deve votar")
      fimse
   fimse
Fimalgoritmo