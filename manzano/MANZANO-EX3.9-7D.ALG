algoritmo "manzano-ex3.9-7d"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê os dados de uma viagem e carro e retorna um relatório dela.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 18/09/2025
var
   tempo_gasto: inteiro
   tempo_gasto_minutos: inteiro
   tempo_gasto_horas: real
   velocidade_media: real
   distancia: real
   litros_usados: real

   LITROS_POR_KM: real

inicio
   LITROS_POR_KM := 12
   
   escreval("Insira o tempo gasto na viagem em minutos: (inteiro)")
   escreva("R: ")
   leia(tempo_gasto)

   escreval("Insira a velocidade média (km/h) durante a viagem: (real)")
   escreva("R: ")
   leia(velocidade_media)
   
   tempo_gasto_horas := tempo_gasto / 60
   tempo_gasto_minutos := int(tempo_gasto - (int(tempo_gasto_horas) * 60)))
   distancia := velocidade_media * tempo_gasto_horas
   litros_usados := distancia * LITROS_POR_KM
   
   escreval()
   escreval("= RELATÓRIO")
   escreval("Velocidade Média: "+numpcarac(velocidade_media)+"Km/h")
   escreval("Tempo Gasto - Horas (H): "+numpcarac(int(tempo_gasto_horas))+"h"+numpcarac(tempo_gasto_minutos))
   escreval("Distância Percorrida: "+numpcarac(distancia)+"Km")
   escreval("Combustível Gasto - Litros (L): "+numpcarac(litros_usados)+"L")

fimalgoritmo