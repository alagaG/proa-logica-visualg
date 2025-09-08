Algoritmo "FACCAT - Ex. 38"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê um id de usuário e uma senha, avaliando se ambas as creden-
//               ciais são válidas.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   usuario: caracter
   senha: caracter

Inicio
   Escreva("Insira seu nome de usuário: (caracter) ")
   Leia(usuario)
   Escreva("Insira seu senha: (caracter) ")
   Leia(senha)
   
   se (usuario = "1234") entao
      se (senha = "9999") entao
         Escreva("Acesso permitido")
      senao
         Escreva("Senha incorreta!")
      fimse
   senao
      Escreva("Usuário inválido!")
   fimse

Fimalgoritmo