Algoritmo "FACCAT - Ex. 25"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê o número de uma conta, seu saldo, débito e crédito
//               avaliando se a conta está negativada.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   conta_numero: inteiro
   conta_saldo: real
   conta_debito: real
   conta_credito: real
   saldo_total: real
   
Inicio
   Escreva("Insira o número da conta: (inteiro) ")
   Leia(conta_numero)
   Escreva("Insira o saldo em conta: (real) R$")
   Leia(conta_saldo)
   Escreva("Insira o débito da conta: (real) R$")
   Leia(conta_debito)
   Escreva("Insira o crédito da conta: (real) R$")
   Leia(conta_credito)
   
   saldo_total := conta_saldo - conta_debito + conta_credito
   se (saldo_total < 0) entao
      Escreva("Saldo negativo")
   senao
      Escreva("Seldo positivo")
   fimse

Fimalgoritmo