Algoritmo "FACCAT - Ex. 24"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos 
// Descrição   : Lê o salário fixo e total em vendas de um funcionário e o
//               apresenta acrescido de comissões.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   salario_fixo: real
   salario_total: real
   total_vendido: real
   comissao_base: real
   comissao_extra: real
   
Inicio
   Escreva("Insira o salário fixo: (real) ")
   Leia(salario_fixo)
   Escreva("Insira o total vendido: (real) ")
   Leia(total_vendido)
   
   comissao_base := total_vendido * 0.03
   
   se (total_vendido > 1500) entao
      comissao_extra := (total_vendido - 1500) * 0.05
   fimse
   
   salario_total := salario_fixo + comissao_base + comissao_extra
   
   Escreval("O salário fixo é de:", salario_fixo)
   Escreval("A comissão é de:", comissao_base, " |", comissao_extra)
   Escreva("O salário acrescido é de:", salario_total)

Fimalgoritmo