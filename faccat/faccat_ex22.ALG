Algoritmo "FACCAT - Ex. 22"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê a quantidade de horas trabalhadas em um mês, o salário por
//               hora e retorna o valor total do salário com o valor acrescido.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   horas_trabalhadas: inteiro
   salario_hora: real
   salario_total: real
   
Inicio
   Escreva("Insira a quantidade de horas trabalhadas no mês: (inteiro) ")
   Leia(horas_trabalhadas)
   Escreva("Insira o salário por hora: (real) R$")
   Leia(salario_hora)
   
   salario_total := horas_trabalhadas * salario_hora
   se (horas_trabalhadas > 160) entao
      salario_total := salario_total + (horas_trabalhadas - 160) * salario_hora * 0.5
   fimse
   
   Escreva("O salário é de:", salario_total)

Fimalgoritmo