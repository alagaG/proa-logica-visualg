algoritmo "manzano-ex3.10-1c"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê os dados de uma eleição e apresenta um relatório.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   votos_A: inteiro
   votos_B: inteiro
   votos_C: inteiro
   votos_validos: inteiro
   votos_brancos: inteiro
   votos_nulos: inteiro

   eleitores: inteiro
   perc_validos: real
   perc_candidato_A: real
   perc_candidato_B: real
   perc_candidato_C: real
   perc_brancos: real
   perc_nulos: real

   casas_decimais: real
   precisao: inteiro

inicio
   precisao := 4

   escreval("Insira a quantidade de votos no candidato A: (inteiro)")
   escreva("R: ")
   leia(votos_A)

   escreval("Insira a quantidade de votos no candidato B: (inteiro)")
   escreva("R: ")
   leia(votos_B)

   escreval("Insira a quantidade de votos no candidato C: (inteiro)")
   escreva("R: ")
   leia(votos_C)

   escreval("Insira a quantidade de votos brancos: (inteiro)")
   escreva("R: ")
   leia(votos_brancos)

   escreval("Insira a quantidade de votos nulos: (inteiro)")
   escreva("R: ")
   leia(votos_nulos)

   votos_validos := votos_A + votos_B + votos_C
   eleitores := votos_validos + votos_brancos + votos_nulos

   casas_decimais := 1
   enquanto (precisao > 0) faca
      casas_decimais := casas_decimais * 10
      precisao := precisao - 1
   fimenquanto

   perc_validos := int(votos_validos / eleitores * casas_decimais * 100) / casas_decimais
   perc_candidato_A := int(votos_A / eleitores * casas_decimais * 100) / casas_decimais
   perc_candidato_B := int(votos_B / eleitores * casas_decimais * 100) / casas_decimais
   perc_candidato_C := int(votos_C / eleitores * casas_decimais * 100) / casas_decimais
   perc_brancos := int(votos_brancos / eleitores * casas_decimais * 100) / casas_decimais
   perc_nulos := int(votos_nulos / eleitores * casas_decimais * 100) / casas_decimais

   escreval()
   escreval("= Relatório")
   escreval("Total de eleitores: "+numpcarac(eleitores))
   escreval("Percentual de votos válidos: "+numpcarac(perc_validos)+"%")
   escreval("Percentual de votos no candidato A: "+numpcarac(perc_candidato_A)+"%")
   escreval("Percentual de votos no candidato B: "+numpcarac(perc_candidato_B)+"%")
   escreval("Percentual de votos no candidato C: "+numpcarac(perc_candidato_C)+"%")
   escreval("Percentual de votos em branco: "+numpcarac(perc_brancos)+"%")
   escreval("Percentual de votos nulos: "+numpcarac(perc_nulos)+"%")

fimalgoritmo