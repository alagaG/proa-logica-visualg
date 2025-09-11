Algoritmo "caixa-eletronico-banco-dos-bc"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Simular os menus de caixa eletrônico de banco.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 11/09/2025
Var
   conta_numero: inteiro
   conta_nome: caracter
   conta_corrente_saldo: real
   conta_poupanca_saldo: real

   opcoes_titulo: caracter
   opcoes_subtitulo: caracter
   opcoes_descricao: vetor[1..10] de caracter
   opcoes_descricao_len: inteiro
   opcoes_texto: vetor[1..10] de caracter
   opcoes_texto_len: inteiro
   opcoes_escolhida: inteiro
   opcoes_loop_i: inteiro

procedimento menu_preparar(titulo, subtitulo:caracter)
inicio
   opcoes_titulo := titulo
   opcoes_subtitulo := subtitulo
fimprocedimento

procedimento menu_descreva(parte:caracter)
inicio
   opcoes_descricao_len := opcoes_descricao_len + 1
   opcoes_descricao[opcoes_descricao_len] := parte
fimprocedimento

procedimento menu_adicionar(opcao:caracter)
inicio
   opcoes_texto_len := opcoes_texto_len + 1
   opcoes_texto[opcoes_texto_len] := opcao
fimprocedimento

procedimento menu_ler()
inicio
   leia(opcoes_escolhida)
   enquanto ((opcoes_escolhida < 1) ou (opcoes_escolhida > opcoes_texto_len)) faca
      escreval("Opção inválida! Insira uma opção entre 1 e ", opcoes_texto_len)
      leia(opcoes_escolhida)
   fimenquanto
fimprocedimento

procedimento menu_exibir()
inicio
   Escreval("=-----= Caixa Eletrônico - Banco dos BC =-----=")
   Escreval("")
   Escreval(opcoes_titulo)
   Escreval(opcoes_subtitulo)
   para opcoes_loop_i de 1 ate opcoes_descricao_len faca
      se (opcoes_descricao[opcoes_loop_i] = "\n") entao
           Escreval("")
      senao
           Escreva(opcoes_descricao[opcoes_loop_i])
      fimse
   fimpara
   Escreval("")
   para opcoes_loop_i de 1 ate opcoes_texto_len faca
      Escreval(opcoes_loop_i, ". ", opcoes_texto[opcoes_loop_i])
   fimpara
   Escreval("")
   Escreva("R: ")
fimprocedimento

procedimento menu_limpar()
inicio
   opcoes_titulo := "Título"
   opcoes_subtitulo := ""
   opcoes_descricao_len := 0
   opcoes_texto_len := 0
   limpatela
fimprocedimento

procedimento menu_tela_principal()
inicio
   menu_limpar()
   menu_preparar("Bem-vindo ao Banco dos BC!", "Escolha uma ação")
   menu_adicionar("Consultar Saldo")
   menu_adicionar("Saque")
   menu_adicionar("Depósito")
   menu_adicionar("Transferência")
   menu_adicionar("Pagamentos")
   menu_adicionar("Extratos")
   menu_adicionar("Configurações")
   menu_adicionar("Sair")
   menu_exibir()
   menu_ler()

   escolha(opcoes_escolhida)
   caso 1
      menu_tela_saldo()
   caso 2
      menu_tela_saque()
   caso 3
      menu_tela_saldo()
   caso 4
      menu_tela_saldo()
   caso 5
      menu_tela_saldo()
   caso 6
      menu_tela_saldo()
   caso 7
      menu_tela_saldo()
   caso 8
      menu_tela_despedida()
   fimescolha

fimprocedimento

procedimento menu_tela_saldo()
inicio
   menu_limpar()
   menu_preparar("Ação - Consulta de Saldo", "Escolha uma ação")
   menu_adicionar("Conta Corrente")
   menu_adicionar("Conta Poupança")
   menu_adicionar("Voltar")
   menu_exibir()
   menu_ler()

   escolha(opcoes_escolhida)
   caso 1
      menu_tela_saldo_callback("Corrente", conta_corrente_saldo)
   caso 2
      menu_tela_saldo_callback("Poupança", conta_poupanca_saldo)
   caso 3
      menu_tela_principal()
   fimescolha

fimprocedimento

procedimento menu_tela_saldo_callback(conta:caracter; saldo:real)
inicio
   menu_limpar()
   menu_preparar("Ação - Consulta de Saldo", conta)
   menu_descreva("R$")
   menu_descreva(saldo)
   menu_descreva("\n")
   menu_adicionar("Voltar")
   menu_exibir()
   menu_ler()
   menu_tela_saldo()
fimprocedimento

procedimento menu_tela_saque()
inicio
   menu_limpar()
   menu_preparar("Ação - Saque", "Escolha uma ação")
   menu_adicionar("Consultar Saldo")
   menu_adicionar("Saque")
   menu_adicionar("")
   menu_exibir()
   menu_ler()

   escolha(opcoes_escolhida)
   caso 1
      menu_tela_saldo()
   fimescolha

fimprocedimento

procedimento menu_tela_despedida()
inicio
   escreval()
   menu_limpar()
   menu_preparar("Realmente deseja sair?", "Confirme com as seguintes opções")
   menu_adicionar("Voltar")
   menu_adicionar("Sair")
   menu_exibir()
   menu_ler()

   escolha(opcoes_escolhida)
   caso 1
      menu_tela_principal()
   caso 2
      escreval()
      escreval("Agradecemos pela preferência, ", conta_nome, ".")
      escreval("Volte sempre!")
   fimescolha
fimprocedimento

procedimento conta_manual()
inicio
   escreval("Antes de iniciar a simulação de Caixa Eletrônico, abra sua conta")
   escreval("Qual seu nome? (caracter)")
   leia(conta_nome)
   escreval("Insira seu saldo da conta corrent: (real)")
   leia(conta_corrente_saldo)
   escreval("Insira seu saldo da conta poupança: (real)")
   leia(conta_poupanca_saldo)
fimprocedimento

procedimento conta_auto(nome:caracter; saldo_corrente, saldo_poupanca:real)
inicio
   conta_nome := nome
   conta_corrente_saldo := saldo_corrente
   conta_corrente_saldo := saldo_poupanca

   escreval("Antes de iniciar a simulação de Caixa Eletrônico, abra sua conta")
   escreval("Qual seu nome? (caracter)")
   escreval(conta_nome)
   escreval("Insira seu saldo da conta corrent: (real)")
   escreval(conta_corrente_saldo)
   escreval("Insira seu saldo da conta poupança: (real)")
   escreval(conta_poupanca_saldo)
fimprocedimento

Inicio
   conta_auto("Eduardo", 500, 0)
   menu_tela_principal()

Fimalgoritmo