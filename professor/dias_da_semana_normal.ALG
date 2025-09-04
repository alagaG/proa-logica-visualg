Algoritmo "dias_da_semana"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê um número e apresenta o respectivo dia da semana ou uma
//               outra mensagem em caso de erro.
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/09/2025
Var
// Seção de Declarações das variáveis 
   numero: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreva("Insira um número: (inteiro) ")
   Leia(numero)
   
   se numero = 1 entao
      Escreva("O dia da semana é: Domingo")
   senao
      se numero = 2 entao
         Escreva("O dia da semana é: Segunda-feira")
      senao
         se numero = 3 entao
            Escreva("O dia da semana é: Terça-feira")
         senao
            se numero = 4 entao
               Escreva("O dia da semana é: Quarta-feira")
            senao
               se numero = 5 entao
                  Escreva("O dia da semana é: Quinta-feira")
               senao
                  se numero = 6 entao
                     Escreva("O dia da semana é: Sexta-feira")
                  senao
                     se numero = 7 entao
                        Escreva("O dia da semana é: Sábado")
                     senao
                        Escreva(
                           "O número digitado não representa um dia da semana")
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo