Algoritmo "FACCAT - Ex. 73"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê os dados dos habitantes de uma cidade - salário e número de
//               filhos. Apresenta um relatório com média de salário, de filhos,
//               maior salário e percentual de pessoas com salário inferiores a
//               R$150.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   ativo: logico
   quantidade: inteiro

   habitante_salario: real
   habitante_filhos: inteiro

   relatorio_media_salario: real
   relatorio_media_filhos: real
   relatorio_maior_salario: real
   relatorio_perc_salario: real

Inicio
   ativo := verdadeiro
   enquanto (ativo) faca
      escreval("Insira o salário do "+numpcarac(quantidade+1)+"° habitante: (real)")
      escreva("R$")
      leia(habitante_salario)
      ativo := habitante_salario >= 0

      se (ativo) entao
         quantidade := quantidade + 1

         escreval("Insira a quantidade de filhos dele: (inteiro)")
         leia(habitante_filhos)
         escreval()

         relatorio_media_salario := relatorio_media_salario + habitante_salario
         relatorio_media_filhos := relatorio_media_filhos + habitante_filhos

         se (habitante_salario > relatorio_maior_salario) entao
            relatorio_maior_salario := habitante_salario
         fimse

         se (habitante_salario < 150) entao
            relatorio_perc_salario := relatorio_perc_salario + 1
         fimse
      fimse
   fimenquanto

   relatorio_media_salario := relatorio_media_salario / quantidade
   relatorio_media_filhos := relatorio_media_filhos / quantidade
   relatorio_perc_salario := relatorio_perc_salario * (1 / quantidade)

   escreval("= Relatório")
   escreval("A média de filhos é: "+numpcarac(relatorio_media_filhos))
   escreval("A média salarial é: R$"+numpcarac(relatorio_media_salario))
   escreval("O maior salario é: R$"+numpcarac(relatorio_maior_salario))
   escreval("O percentual de salários inferiores a R$150 é: "+numpcarac(relatorio_perc_salario*100)+"%")

Fimalgoritmo