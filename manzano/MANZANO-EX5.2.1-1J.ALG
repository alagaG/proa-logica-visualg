algoritmo "manzano-ex5.2.1-1j"
// Disciplina  : Lógica de Programação
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 2 valores e calcula o quociente inteiro da divisão deles.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 24/09/2025
var
   numero1: real
   numero2: real
   quociente: real
   sinal: inteiro

inicio
   escreval("Insira o valor do dividendo: (real)")
   leia(numero1)

   repita
      escreval("Insira o valor do divisor: (real)")
      leia(numero2)
   ate (numero2 <> 0)

   se ((numero1 < 0) e (numero2 < 0)) entao
      sinal := 1
      numero1 := numero1 * -1
      numero2 := numero2 * -1
   senao
      se (numero1 < 0) entao
         sinal := -1
         numero1 := numero1 * -1
      fimse
      se (numero2 < 0) entao
         sinal := -1
         numero2 := numero2 * -1
      fimse
   fimse

   repita
      numero1 := numero1 - numero2
      se (numero1 >= 0) entao
         quociente := quociente + 1
      fimse
   ate (numero1 <= 0)
   quociente := quociente * sinal

   escreval("O quociente é: "+numpcarac(quociente))


fimalgoritmo