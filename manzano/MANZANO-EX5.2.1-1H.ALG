algoritmo "manzano-ex5.2.1-1h"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Calcula a área total de uma residência a partir das áreas de
//               seus cômodos.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24x/09/2025
var
   comodo_nome: caracter
   comodo_largura: real
   comodo_comprimento: real
   comodo_area: real
   casa_area: real
   confirmacao: caracter
   parar: logico

inicio
   repita
      escreval("Qual o nome do cômodo? (caracter)")
      leia(comodo_nome)

      escreval("Qual a largura do cômodo? (real)")
      leia(comodo_largura)

      escreval("Qual o comprimento do cômodo? (real)")
      leia(comodo_comprimento)

      comodo_area := comodo_largura * comodo_comprimento
      casa_area := casa_area + comodo_area

      escreval
      escreval("A área do cômodo '"+comodo_nome+"' é: "+numpcarac(comodo_area)+"m²")
      escreval

      escreval("Deseja continuar? (SIM/NAO)")
      leia(confirmacao)
      escreval
      
      parar := maiusc(confirmacao) = "NAO"
   ate (parar)
   escreval("A área da casa é: "+numpcarac(casa_area)+"m³")

fimalgoritmo