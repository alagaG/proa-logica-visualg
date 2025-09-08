Algoritmo "FACCAT - Ex. 42"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê as notas de um aluno, calcula sua média ponderada e a
//               apresenta para o usuário
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   notas_provas: vetor[1..3] de real
   notas_atividades: real
   media_ponderada: real
   conceito: caracter
   
Inicio
   Escreva("Digite a nota da 1° prova: (real) ")
   Leia(notas_provas[1])
   Escreva("Digite a nota da 2° prova: (real) ")
   Leia(notas_provas[2])
   Escreva("Digite a nota da 3° prova: (real) ")
   Leia(notas_provas[3])
   Escreva("Digite a média das notas das atividades: (real) ")
   Leia(notas_atividades)

   media_ponderada := (notas_provas[1] + notas_provas[2] * 2 + notas_provas[3] * 3 + notas_atividades) / 7

   se (media_ponderada < 6) entao
      conceito := "D"
   senao
      se (media_ponderada < 7.5) entao
         conceito := "C"
      senao
         se (media_ponderada < 9.0) entao
            conceito := "B"
         senao
            conceito := "A"
         fimse
      fimse
   fimse
   
   Escreval("A média ponderada do aluno é: ", media_ponderada)
   Escreva("Seu conceito é: ", conceito)

Fimalgoritmo