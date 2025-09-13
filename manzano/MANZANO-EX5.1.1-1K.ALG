algoritmo "manzano-ex5.1.1-1K"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê as dimensões dos comodos de uma casa e apresenta sua
//               área total ao final.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 13/09/2025
var
   loop: logico
   nome: caracter
   largura: real
   comprimento: real
   altura: real
   continuar: caracter
   area_quadrada: real
   area_cubica: real
   total_quadrado: real
   total_cubico: real

inicio
      escreval("Vou te ajudar a calcular a área da sua casa. Vamos lá!")

      loop := verdadeiro
   enquanto (loop) faca
            escreval("Qual o nome do cômodo? (caracter)")
            leia(nome)
            escreval("Qual a largura dele? (real)")
            leia(largura)
            escreval("Qual o comprimento dele? (real)")
            leia(comprimento)
            escreval("Qual a altura dele? (real)")
            leia(altura)
            
            area_quadrada := largura * comprimento
            area_cubica := largura * comprimento * altura
            
            escreval()
            escreval("O cômodo '" + nome + "'")
            escreval("Tem " + numpcarac(area_quadrada) + "m² e " + numpcarac(area_cubica) + "m³")
            escreval()

            total_quadrado := total_quadrado + area_quadrada
            total_cubico := total_cubico + area_cubica

            escreval("Deseja continuar? (s/n)")
            leia(continuar)
            
            loop := minusc(continuar) = "s"
   fimenquanto

   escreval()
   escreval("A área quadrada total da casa é de: " + numpcarac(total_quadrado) + "m²")
   escreval("A área cúbica total da casa é de: " + numpcarac(total_cubico) + "m³")

fimalgoritmo