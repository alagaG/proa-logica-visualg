Algoritmo "FACCAT - Ex. 34"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê 2 números (x e y), calcula z e avaliando-o retorna uma
//               resposta. O objetivo era completar a seguinte tabela.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
//
// +----------------------+
// |       Variáveis      |
// +---+---+---+----------+
// | X | Y | Z | Resposta |
// +---+---+---+----------+
// | 3 | 2 |11 |    B     |
// |150| 3 |455|    C     |
// | 7 |-1 |-2 |    A     |
// |-2 | 5 |-5 |    A     |
// |50 | 3 |155|    C     |
// +---+---+---+----------+
Var
   x: real
   y: real
   z: real
   resposta: caracter

Inicio
   Escreva("Insira o valor de X: (real) ")
   Leia(x)
   Escreva("Insira o valor de Y: (real) ")
   Leia(y)
   z := (x * y) + 5
   se (z <= 0) entao
      resposta := "A"
   senao
      se (z <= 100) entao
           resposta := "B"
      senao
           resposta := "C"
      fimse
   fimse
   Escreva("Z:", z, " | Resposta: ", resposta)

Fimalgoritmo