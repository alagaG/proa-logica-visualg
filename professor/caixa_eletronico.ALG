algoritmo "caixa_eletronico_banco_dos_bc"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Simular os menus de caixa eletrônico de banco.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 11/09/2025

//
// #region UTILITÁRIOS
//

funcao hashtxt(texto:caracter): inteiro
// descrição:
// Recebe um texto e retorna a soma o código ASCII de cada caractér dele
var
   resultado: inteiro
   loop_i: inteiro
inicio
   para loop_i de 1 ate compr(texto) faca
      resultado := resultado + asc(copia(texto, loop_i, 1))
   fimpara
   retorne resultado * compr(texto)
fimfuncao

funcao preencherAntes(preenchimento,texto:caracter; tamanho:inteiro): caracter
// descrição:
// Adiciona um preenchimento no começo de um texto até atingir um tamanho
inicio
   enquanto (compr(texto) < tamanho) faca
      texto := preenchimento + texto
   fimenquanto
   retorne texto
fimfuncao

funcao entradaInt(texto:caracter): inteiro
// descrição:
// Formata uma resuisição ao usuário e retorna o valor inteiro digitado
var
   entrada: inteiro
inicio
   escreval(texto + ": (inteiro)")
   leia(entrada)
   escreval()
   retorne entrada
fimfuncao

// descrição:
// Formata uma resuisição ao usuário e retorna o valor inteiro digitado
funcao entradaIntervaloInt(texto:caracter; min, max: inteiro): inteiro
var
   entrada: inteiro
inicio
   escreval(texto + ": (inteiro)")
   leia(entrada)
   escreval()
   enquanto ((entrada < min) ou (entrada > max)) faca
   escreval("Valor fora do intervalo de " + numpcarac(min) + "-" + numpcarac(max))
      escreval(texto + ": (inteiro)")
      leia(entrada)
      escreval()
   fimenquanto
   retorne entrada
fimfuncao

// descrição:
// Formata uma resuisição ao usuário e retorna o valor real digitado
funcao entradaReal(texto:caracter): real
var
   entrada: real
inicio
   escreval(texto + ": (real)")
   leia(entrada)
   escreval()
   retorne entrada
fimfuncao

// descrição:
// Formata uma resuisição ao usuário e retorna o valor monetário digitado
funcao entradaDinheiro(texto:caracter): real
var
   entrada: real
inicio
   escreval(texto + ": (real)")
   escreva("R$")
   leia(entrada)
   escreval()
   retorne entrada
fimfuncao

// descrição:
// Formata uma resuisição ao usuário e retorna o valor textual digitado
funcao entradaCarac(texto:caracter): caracter
var
   entrada: caracter
inicio
   escreval(texto + ": (caracter)")
   leia(entrada)
   escreval()
   retorne entrada
fimfuncao

// descrição:
// Formata uma resuisição ao usuário e retorna o valor lógico digitado
funcao entradaLog(texto:caracter): logico
var
   entrada: caracter
inicio
   escreval(texto + ": (S/N)")
   leia(entrada)
   entrada := minusc(entrada)

   enquanto ((entrada <> "s") e (entrada <> "n")) faca
      escreval("Entrada inválida, use 'S' para VERDADEIRO e 'N' para FALSO")
      leia(entrada)
      entrada := minusc(entrada)
   fimenquanto                  ]

   escreval()
   retorne entrada = "s"
fimfuncao

procedimento saida(texto: caracter)
inicio
   escreval(texto)
   escreval()
fimprocedimento

//
// #endregion
// #region MENUS
//

procedimento menu_preparar(titulo, subtitulo, descricao:caracter)
inicio
   opcoes_titulo := titulo
   opcoes_subtitulo := subtitulo
   opcoes_descricao := descricao
fimprocedimento

procedimento menu_adicionar(chave:caracter; valor:inteiro)
inicio
   opcoes_quantidade := opcoes_quantidade + 1
   opcoes_chave[opcoes_quantidade] := chave
   se (valor > 0) entao
      opcoes_valor[opcoes_quantidade] := valor
   senao
      opcoes_valor[opcoes_quantidade] := ID_MENU_WIP
   fimse
fimprocedimento

procedimento menu_adicionar_principal(chave:caracter)
inicio
   menu_adicionar(chave, ID_MENU_PRINCIPAL)
fimprocedimento

procedimento menu_adicionar_voltar(chave:caracter)
inicio
   menu_adicionar(chave, caixa_menu_anterior)
fimprocedimento

procedimento menu_adicionar_saida(chave:caracter)
inicio
   menu_adicionar(chave, ID_MENU_SAIDA)
fimprocedimento

procedimento menu_ler()
inicio
   leia(opcoes_escolhida)
   enquanto ((opcoes_escolhida < 1) ou (opcoes_escolhida > opcoes_quantidade)) faca
      escreval()
      escreval("Opção inválida! Insira uma opção entre 1 e ", opcoes_quantidade)
      escreva("R: ")
      leia(opcoes_escolhida)
   fimenquanto
fimprocedimento

procedimento menu_exibir()
inicio
   menu_exibir_cabecalho()
   menu_exibir_opcoes()
   menu_exibir_escolha()
fimprocedimento

procedimento menu_exibir_cabecalho()
inicio
   escreval("=-------------= Caixa Eletrônico - Banco dos BC =-------------=")
   escreval()
   escreval(opcoes_titulo)
   escreval(opcoes_subtitulo)
   escreval()
   escreval("=-------------=                                 =-------------=")
   se (compr(opcoes_descricao) > 0) entao
      escreval()
      escreval("D: " + opcoes_descricao)
   fimse
   escreval()
fimprocedimento

procedimento menu_exibir_opcoes_e_escolha()
inicio
   menu_exibir_opcoes()
   menu_exibir_escolha()
fimprocedimento

procedimento menu_exibir_opcoes()
inicio
   para opcoes_loop_i de 1 ate opcoes_quantidade faca
      escreval(numpcarac(opcoes_loop_i) + ". " + opcoes_chave[opcoes_loop_i])
   fimpara
   escreval()
fimprocedimento

procedimento menu_exibir_escolha()
inicio
   escreva("R: ")
fimprocedimento

procedimento menu_limpar()
inicio
   opcoes_titulo := "Título"
   opcoes_subtitulo := ""
   opcoes_descricao := ""
   opcoes_quantidade := 0
   limpatela
fimprocedimento

procedimento menu_tela_principal()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Bem-vindo ao Banco dos BC!"
   subtitulo := "Escolha uma ação"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar("Consultar Saldo", ID_MENU_SALDO)
   menu_adicionar("Saque", ID_MENU_SAQUE)
   menu_adicionar("Depósito", ID_MENU_DEPOSITO)
   menu_adicionar("Transferência", 0)
   menu_adicionar("Pagamentos", 0)
   menu_adicionar("Extratos", 0)
   menu_adicionar("Configurações", 0)
   menu_adicionar_saida("Sair")
   menu_exibir()
fimprocedimento

procedimento menu_tela_saldo()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Ação - Consulta de Saldo"
   subtitulo := "Escolha uma ação"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar("Conta Corrente", ID_MENU_SALDO_CORRENTE)
   menu_adicionar("Conta Poupança", ID_MENU_SALDO_POUPANCA)
   menu_adicionar_principal("Voltar")
   menu_exibir()
fimprocedimento

procedimento menu_tela_saldo_callback(conta:caracter; saldo:real)
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Ação - Consulta de Saldo - " + conta
   subtitulo := "Escolha uma ação"
   descricao := "Seu saldo é R$" + numpcarac(saldo)

   menu_limpar
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar_voltar("Voltar")
   menu_exibir()
fimprocedimento

procedimento menu_tela_saque()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Ação - Efetuar Saque"
   subtitulo := "Escolha uma ação"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar("Conta Corrente", ID_MENU_SAQUE_CORRENTE)
   menu_adicionar("Conta Poupanca", ID_MENU_SAQUE_POUPANCA)
   menu_adicionar("Saque Rápido (Corrente)", ID_MENU_SAQUE_RAPIDO)
   menu_adicionar_principal("Voltar")
   menu_exibir()
fimprocedimento

procedimento menu_tela_saque_callback(conta:caracter)
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter

   conta_corrente: logico
   conta_saldo: real

   saque_valor: real
   saque_confirmado: logico
inicio
   titulo := "Ação - Efetuar Saque - " + conta
   subtitulo := "Siga as seguintes instruções"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_exibir_cabecalho()

   conta_corrente := conta = "Corrente"
   se (conta_corrente) entao
      conta_saldo := conta_corrente_saldo
   senao
      conta_saldo := conta_poupanca_saldo
   fimse

   saque_confirmado := falso
   enquanto (nao saque_confirmado) faca
      saque_valor := entradaReal("Insira o valor a ser sacado")
      saque_confirmado := entradaLog("Confirme se o valor digitado está correto")
   fimenquanto

   se (saque_valor <= conta_saldo) entao
      se (conta_corrente) entao
         conta_corrente_saldo := conta_corrente_saldo - saque_valor
      senao
         conta_poupanca_saldo := conta_poupanca_saldo - saque_valor
      fimse

      saida("Saque efetuado com sucesso!")
   senao
      saida("Saldo insuficiente! Saque não efetuado")
   fimse

   menu_adicionar_voltar("Voltar")
   menu_exibir_opcoes_e_escolha()
fimprocedimento

procedimento menu_tela_saque_rapido()
var
   loop_i: inteiro
   titulo: caracter
   subtitulo: caracter
   descricao: caracter

   tabela: vetor[1..4] de real

   saque_valor: real
   saque_confirmado: logico
inicio
   titulo := "Ação - Efetuar Saque - Rápido (Corrente)"
   subtitulo := "Siga as seguintes instruções"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_exibir_cabecalho()

   tabela[1] := 20
   tabela[2] := 50
   tabela[3] := 100
   tabela[4] := 200

   escreval("+---+----------+")
   para loop_i de 1 ate 4 faca
      escreval("| " + numpcarac(loop_i) + " | ", preencherAntes(" ", "R$" + numpcarac(tabela[loop_i]), 8), " |")
   fimpara
   saida("+---+----------+")

   saque_confirmado := falso
   enquanto (nao saque_confirmado) faca
      saque_valor := tabela[entradaIntervaloInt("Insira o valor a ser sacado", 1, 4)]
      saque_confirmado := entradaLog("Confirme se o valor digitado está correto")
   fimenquanto

   se (saque_valor <= conta_corrente_saldo) entao
      conta_corrente_saldo := conta_corrente_saldo - saque_valor
      saida("Saque efetuado com sucesso!")
   senao
      saida("Saldo insuficiente! Saque não efetuado")
   fimse

   menu_adicionar_voltar("Voltar")
   menu_exibir_opcoes_e_escolha()
fimprocedimento

procedimento menu_tela_deposito()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Ação - Efetuar Depósito"
   subtitulo := "Escolha uma ação"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar("Conta Corrente", ID_MENU_DEPOSITO_CORRENTE)
   menu_adicionar("Conta Poupanca", ID_MENU_DEPOSITO_POUPANCA)
   menu_adicionar_principal("Voltar")
   menu_exibir()
fimprocedimento

procedimento menu_tela_deposito_callback(conta:caracter)
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter

   deposito_valor: real
   deposito_confirmado: logico
inicio
   titulo := "Ação - Efetuar Depósito - " + conta
   subtitulo := "Siga as seguintes instruções"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_exibir_cabecalho()

   deposito_confirmado := falso
   enquanto (nao deposito_confirmado) faca
      deposito_valor := entradaReal("Insira o valor a ser sacado")
      deposito_confirmado := entradaLog("Confirme se o valor digitado está correto")
   fimenquanto

   se (deposito_corrente) entao
      conta_corrente_saldo := conta_corrente_saldo - deposito_valor
   senao
      conta_poupanca_saldo := conta_poupanca_saldo - deposito_valor
   fimse
   saida("Depósito efetuado com sucesso!")

   menu_adicionar_voltar("Voltar")
   menu_exibir_opcoes_e_escolha()
fimprocedimento

procedimento menu_tela_saida()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Realmente deseja sair?"
   subtitulo := "Confirme com as seguintes opções"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar_voltar("Voltar")
   menu_adicionar("Sair", ID_MENU_DESPEDIDA)
   menu_exibir()
fimprocedimento

procedimento menu_tela_wip()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Menu em construção"
   subtitulo := "Oops..."
   descricao := "Pedimos perdão pelo inconvenianete, mas essa opção não está pronta ainda. Estamos trabalhando para resolver isso. ;)"

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar_voltar("Voltar")
   menu_adicionar("Sair", ID_MENU_DESPEDIDA)
   menu_exibir()
fimprocedimento

//
// #region CONTA DE USUÁRIO
//

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
   conta_poupanca_saldo := saldo_poupanca

   escreval("Antes de iniciar a simulação de Caixa Eletrônico, abra sua conta")
   escreval("Qual seu nome? (caracter)")
   escreval(conta_nome)
   escreval("Insira seu saldo da conta corrent: (real)")
   escreval(conta_corrente_saldo)
   escreval("Insira seu saldo da conta poupança: (real)")
   escreval(conta_poupanca_saldo)
fimprocedimento

//
// #endregion
// #region CAIXA ELETRÔNICO
//

procedimento caixa_loop()
var
   opcoes_escolhida_hash: inteiro
inicio
   caixa_menu := ID_MENU_PRINCIPAL
   caixa_ativo := verdadeiro
   enquanto (caixa_ativo) faca
      caixa_ativo := verdadeiro
      escolha (caixa_menu)

      caso ID_MENU_PRINCIPAL
         menu_tela_principal()

      caso ID_MENU_SALDO
         menu_tela_saldo()

      caso ID_MENU_SALDO_CORRENTE
         menu_tela_saldo_callback("Corrente", conta_corrente_saldo)

      caso ID_MENU_SALDO_POUPANCA
         menu_tela_saldo_callback("Poupança", conta_poupanca_saldo)

      caso ID_MENU_SAQUE
         menu_tela_saque()

      caso ID_MENU_SAQUE_CORRENTE
         menu_tela_saque_callback("Corrente")

      caso ID_MENU_SAQUE_POUPANCA
         menu_tela_saque_callback("Poupança")

      caso ID_MENU_SAQUE_RAPIDO
         menu_tela_saque_rapido()

      caso ID_MENU_DEPOSITO
         menu_tela_saque()

      caso ID_MENU_DEPOSITO_CORRENTE
         menu_tela_saque_callback("Corrente")

      caso ID_MENU_DEPOSITO_POUPANCA
         menu_tela_saque_callback("Poupança")

      caso ID_MENU_SAIDA
         menu_tela_saida()

      caso ID_MENU_WIP
         menu_tela_wip()

      caso ID_MENU_DESPEDIDA
         escreval()
         escreval("Agradecemos pela preferência, " + conta_nome + ".")
         escreval("Volte sempre!")
         caixa_ativo := falso

      outrocaso
         escreval("MENU NÃO ECONTRADO")
         escreval("caixa_menu: " + caixa_menu)
         caixa_ativo := falso
      fimescolha

      se (caixa_ativo) entao
         menu_ler()
         caixa_menu_anterior := caixa_menu
         caixa_menu := opcoes_valor[opcoes_escolhida]
      fimse
   fimenquanto
fimprocedimento

// #endregion

Var
   conta_numero: inteiro
   conta_nome: caracter
   conta_corrente_saldo: real
   conta_poupanca_saldo: real

   caixa_ativo: logico
   caixa_menu: inteiro
   caixa_menu_anterior: inteiro

   opcoes_titulo: caracter
   opcoes_subtitulo: caracter
   opcoes_descricao: caracter
   opcoes_chave: vetor[1..10] de caracter
   opcoes_valor: vetor[1..10] de inteiro
   opcoes_quantidade: inteiro
   opcoes_escolhida: inteiro
   opcoes_loop_i: inteiro

   ID_MENU_PRINCIPAL: inteiro
   ID_MENU_SALDO: inteiro
   ID_MENU_SALDO_CORRENTE: inteiro
   ID_MENU_SALDO_POUPANCA: inteiro
   ID_MENU_SAQUE: inteiro
   ID_MENU_SAQUE_CORRENTE: inteiro
   ID_MENU_SAQUE_POUPANCA: inteiro
   ID_MENU_SAQUE_RAPIDO: inteiro
   ID_MENU_DEPOSITO: inteiro
   ID_MENU_DEPOSITO_CORRENTE: inteiro
   ID_MENU_DEPOSITO_POUPANCA: inteiro
   ID_MENU_SAIDA: inteiro
   ID_MENU_WIP: inteiro
   ID_MENU_DESPEDIDA: inteiro

procedimento constantes()
inicio
   ID_MENU_PRINCIPAL               := hashtxt("principal")
   ID_MENU_SALDO                   := hashtxt("consultar_saldo")
   ID_MENU_SALDO_CORRENTE          := hashtxt("consultar_saldo_conta_corrente")
   ID_MENU_SALDO_POUPANCA          := hashtxt("consultar_saldo_conta_poupanca")
   ID_MENU_SAQUE                   := hashtxt("efetuar_saque")
   ID_MENU_SAQUE_CORRENTE          := hashtxt("efetuar_saque_conta_corrente")
   ID_MENU_SAQUE_POUPANCA          := hashtxt("efetuar_saque_conta_poupanca")
   ID_MENU_SAQUE_RAPIDO            := hashtxt("efetuar_saque_rapido")
   ID_MENU_DEPOSITO                := hashtxt("efetuar_deposito")
   ID_MENU_DEPOSITO_CORRENTE       := hashtxt("efetuar_deposito_conta_corrente")
   ID_MENU_DEPOSITO_POUPANCA       := hashtxt("efetuar_deposito_conta_poupanca")
   ID_MENU_SAIDA                   := hashtxt("saida")
   ID_MENU_WIP                     := hashtxt("wip")
   ID_MENU_DESPEDIDA               := hashtxt("despedida")

fimprocedimento

Inicio
   constantes()
   conta_auto("Eduardo", 500, 10)
   caixa_loop()

Fimalgoritmo