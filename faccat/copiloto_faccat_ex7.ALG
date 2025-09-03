Algoritmo "FACCAT - Ex. 09"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Ler a quantidade total de votos totais, brancos, nulos e
//               válidos e retornar o percentual de cada um.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 03/09/2025
Var
// Seção de Declarações das variáveis 
quantidadeTotal : inteiro
quantidadeBranco : inteiro
quantidadeNulo : inteiro
quantidadeValido : inteiro

percentualBranco : real
percentualNulo : real
percentualValido : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreva("Insira a quantidade total de eleitores: ")
Leia(quantidadeTotal)
Escreva("Insira a quantidade de votos em branco: ")
Leia(quantidadeBranco)
Escreva("Insira a quantidade de votos nulos: ")
Leia(quantidadeNulo)
Escreva("Insira a quantidade de votos válidos: ")
Leia(quantidadeValido)

percentualBranco <- (quantidadeBranco / quantidadeTotal) * 100
percentualNulo <- (quantidadeNulo / quantidadeTotal) * 100
percentualValido <- (quantidadeValido / quantidadeTotal) * 100

Escreval("O percentual de votos brancos é: ", percentualBranco:2:2, "%")
Escreval("O percentual de votos nulos é: ", percentualNulo:2:2, "%")
Escreval("O percentual de votos válidos é: ", percentualValido:2:2, "%")

Fimalgoritmo