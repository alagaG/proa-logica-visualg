Algoritmo "FACCAT - Ex. 43"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê as informações de um triângulo e retorna o tipo de triângulo
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025

// +---+---+---+-----------------+
// | a | b | c |      mens       |
// +---+---+---+-----------------+
// | 1 | 2 | 2 | Não é triângulo |
// | 2 | 4 | 3 | Escaleno        |
// | 3 | 2 | 4 | Escaleno        |
// | 4 | 4 | 4 | Equilátero      |
// | 5 | 3 | 3 | Isósceles       |
// +---+---+---+-----------------+
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
         mens := "Triângulo Equilátero"
      senao
           se ((a=b) ou (b=c) ou (a=c)) entao
                mens := "Triângulo Isósceles"
           senao
                mens := "Triângulo Escaleno"
           fimse
      fimse
   senão
      mens := "Não é possível formar um triângulo"
   fimse
   Escreva(mens)
Fimalgoritmo