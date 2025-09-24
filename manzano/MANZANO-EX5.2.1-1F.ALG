algoritmo "manzano-ex5.2.1-1f"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê inteiros indefinidamente até receber um negativo e apresenta
//               o somatório, a média aritmetica e a quantidade desses valores.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   numero: inteiro
   relatorio_somatorio: real
   relatorio_media: real
   relatorio_quantidade: inteiro


inicio
   repita
      escreval("Insira um número: (inteiro)")
      leia(numero)
      escreval

      se (numero >= 0) entao
         relatorio_somatorio := relatorio_somatorio + numero
         relatorio_quantidade := relatorio_quantidade + 1
      fimse
   ate (numero < 0)
   
   se (relatorio_quantidade > 0) entao
   relatorio_media := relatorio_somatorio / relatorio_quantidade
   fimse
   
   escreval("= RESULTADOS")
   escreval("Somatório: "+numpcarac(relatorio_somatorio))
   escreval("Média Arimetica: "+numpcarac(relatorio_media))
   escreval("Quantidade: "+numpcarac(relatorio_quantidade))

fimalgoritmo