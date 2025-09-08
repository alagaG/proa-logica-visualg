Algoritmo "FACCAT - Ex. 43"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê as informações de um triângulo e retorna o tipo de triângulo
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   a: real
   b: real
   c: real
   mens: caracter
   
Inicio
   Escreval("Insira os lados de um triângulo: (real)")
   Leia(a, b, c)
   se ((a < b+c) e (b <a+c) e (c <a+b)) entao
      se ((a=b) e (b=c)) entao
         mens := 'Triângulo Equilátero'
      senao
           se ((a=b) ou (b=c) ou (a=c)) entao
                mens := "Triângulo Isósceles"
           senao
                mens := "Triângulo Escaleno"
           fimse
      fimse
   senão
      mens := "Não e possível formar um triângulo"
   fimse
   Escreva(mens)
Fimalgoritmo