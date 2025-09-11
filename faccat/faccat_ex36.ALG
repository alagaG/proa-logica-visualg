Algoritmo "FACCAT - Ex. 36"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a idade de 2 homens e 2 mulheres, calcula e apresenta a
//               soma das idades do homem mais velho com da mulher mais nova
//               e o produto das idades do homem mais novo com mulher mais
//               velha.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   idade_MA: inteiro
   idade_MB: inteiro
   idade_FA: inteiro
   idade_FB: inteiro
   soma: inteiro
   produto: inteiro

Inicio
   Escreva("Insira a idade do primeiro homem: (inteiro) ")
   Leia(idade_MA)
   Escreva("Insira a idade do segundo homem: (inteiro) ")
   Leia(idade_MB)
   Escreva("Insira a idade da primeira mulher: (inteiro) ")
   Leia(idade_FA)
   Escreva("Insira a idade da segunda mulher: (inteiro) ")
   Leia(idade_FB)
   
   se (idade_MA > idade_MB) entao
      se (idade_FA > idade_FB) entao
         soma := idade_MA + idade_FB
         produto := idade_MB * idade_FA
      senao
         soma := idade_MA + idade_FA
         produto := idade_MB * idade_FB
      fimse
   senao
      se (idade_FA > idade_FB) entao
         soma := idade_MB + idade_FB
         produto := idade_MA * idade_FA
      senao
         soma := idade_MB + idade_FA
         produto := idade_MA * idade_FB
      fimse
   fimse
   
   Escreva("Soma:", soma, " | Produto: ", produto)
   
Fimalgoritmo