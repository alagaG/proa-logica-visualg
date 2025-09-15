Algoritmo "FACCAT - Ex. 70"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê N números, sendo N inserido pelo usuário e apresenta o menor
//               e o maior número.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   quantidade: inteiro
   contador: inteiro
   numero: real
   numero_maior: real
   numero_media: real

Inicio
   escreval("Insira a quantidade de números a serem lidos: (inteiro)")
   leia(quantidade)

   contador := 1
   enquanto (contador <= quantidade) faca
      escreval("Insira o "+numpcarac(contador)+"° número: (real)")
      leia(numero)

      se (numero > numero_maior) entao
         numero_maior := numero
      fimse
      
      numero_media := numero_media + numero / quantidade
      
      escreval()

      contador := contador + 1
   fimenquanto
   escreval("O maior número digitado foi: "+numpcarac(numero_maior))
   escreval("A média dos números digitados é: "+numpcarac(numero_media))

Fimalgoritmo