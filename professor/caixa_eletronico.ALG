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

procedimento saida_multilinha(texto:caracter)
var
   quebra_de_linha: inteiro
   trecho: caracter
inicio
   quebra_de_linha := pos("\n", texto)
   enquanto (quebra_de_linha > 0) faca
      trecho := copia(texto, 1, quebra_de_linha - 1)
      escreval(trecho)
      texto := copia(texto, quebra_de_linha + 2, compr(texto) - quebra_de_linha + 1)
      quebra_de_linha := pos("\n", texto)
   fimenquanto
   escreval(texto)

fimprocedimento

procedimento adicionar_extrato(operacao,conta:caracter;valor:real;detalhes:caracter)
var
   primeiro_extrato: logico
   extrato_da_operacao: caracter
   loop_i: inteiro
inicio
   primeiro_extrato := extrato_id = 0
   se (primeiro_extrato) entao
      extrato_id := 1
   fimse

   extrato_da_operacao := extrato_da_operacao + numpcarac(extrato_id) + ". " + operacao + ": "

   se (valor < 0) entao
      extrato_da_operacao := extrato_da_operacao + "-"
   senao
      extrato_da_operacao := extrato_da_operacao + "+"
   fimse

   extrato_da_operacao := extrato_da_operacao + "R$" + numpcarac(abs(valor)) + "\n"

   se (compr(detalhes) > 0) entao
      extrato_da_operacao := extrato_da_operacao + detalhes + "\n"
   fimse

   // Incremento do ID e quebra de linha inicial
   extrato_id := extrato_id + 1
   se (nao primeiro_extrato) entao
      extrato_completo := extrato_completo + "\n"
      extrato_corrente := extrato_corrente + "\n"
      extrato_poupanca := extrato_poupanca + "\n"
   fimse

   // Adiciona ao extrato completo
   extrato_completo := extrato_completo + "[" + conta + "]\n" + extrato_da_operacao

   // Adiciona aos extratos recentes
   se (extrato_limitado_menor_quantidade < 5) entao
      extrato_limitado_menor_quantidade := extrato_limitado_menor_quantidade + 1
      extrato_limitado_menor[extrato_limitado_menor_quantidade] := extrato_da_operacao
   senao
      para loop_i de 1 ate 5 faca
         se (loop_i < 5) entao
            extrato_limitado_menor[loop_i] := extrato_limitado_menor[extrato_limitado_menor_quantidade + 1]
         senao
            extrato_limitado_menor[loop_i] := "[" + conta + "]\n" + extrato_da_operacao
         fimse
      fimpara
   fimse

   se (extrato_limitado_maior_quantidade < 30) entao
      extrato_limitado_maior_quantidade := extrato_limitado_maior_quantidade + 1
      extrato_limitado_maior[extrato_limitado_maior_quantidade] := "[" + conta + "]\n" + extrato_da_operacao
   senao
      para loop_i de 1 ate 5 faca
         se (loop_i < 5) entao
            extrato_limitado_maior[loop_i] := extrato_limitado_maior[extrato_limitado_maior_quantidade + 1]
         senao
            extrato_limitado_maior[loop_i] := extrato_da_operacao
         fimse
      fimpara
   fimse

   // Adiciona ao extrato da conta
   se (conta = ENUM_CONTA_CORRENTE) entao
      extrato_corrente := extrato_corrente + extrato_da_operacao
   senao
      extrato_poupanca := extrato_poupanca + extrato_da_operacao
   fimse
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
   menu_adicionar("Extratos", ID_MENU_EXTRATO)
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
         adicionar_extrato("Saque", "Conta Corrente", -saque_valor, "")
      senao
         conta_poupanca_saldo := conta_poupanca_saldo - saque_valor
         adicionar_extrato("Saque", "Conta Poupança", -saque_valor, "")
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
      saque_valor := tabela[entradaIntervaloInt("Escolha a opção de valor a ser sacado", 1, 4)]
      saque_confirmado := entradaLog("Confirme se o valor digitado está correto")
   fimenquanto

   se (saque_valor <= conta_corrente_saldo) entao
      conta_corrente_saldo := conta_corrente_saldo - saque_valor
      adicionar_extrato("Saque Rápido", "Conta Corrente", -saque_valor, "")
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

   conta_corrente: logico

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
      deposito_valor := entradaReal("Escolha a opção de valor a ser sacado")
      deposito_confirmado := entradaLog("Confirme se o valor digitado está correto")
   fimenquanto

   conta_corrente := conta = "Corrente"
   se (conta_corrente) entao
      conta_corrente_saldo := conta_corrente_saldo - deposito_valor
      adicionar_extrato("Depósito", "Conta Corrente", deposito_valor, "")
   senao
      conta_poupanca_saldo := conta_poupanca_saldo - deposito_valor
      adicionar_extrato("Depósito", "Conta Poupança", deposito_valor, "")
   fimse
   saida("Depósito efetuado com sucesso!")

   menu_adicionar_voltar("Voltar")
   menu_exibir_opcoes_e_escolha()
fimprocedimento

procedimento menu_tela_extrato()
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter
inicio
   titulo := "Ação - Consulta de Extrato"
   subtitulo := ""
   descricao := ""

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_adicionar("Completo", ID_MENU_EXTRATO_COMPLETO)
   menu_adicionar("Útilmas 30 Operações", ID_MENU_EXTRATO_LIMITADO_MAIOR)
   menu_adicionar("Últimas 5 Operações", ID_MENU_EXTRATO_LIMITADO_MENOR)
   menu_adicionar("Conta Corrente", ID_MENU_EXTRATO_CORRENTE)
   menu_adicionar("Conta Poupança", ID_MENU_EXTRATO_POUPANCA)
   menu_adicionar_principal("Voltar")
   menu_exibir()

fimprocedimento

procedimento menu_tela_extrato_callback(extrato:caracter)
var
   titulo: caracter
   subtitulo: caracter
   descricao: caracter

   acumulador: caracter
   loop_i: inteiro
inicio
   titulo := "Ação - Consulta de Extrato"
   subtitulo := extrato
   descricao := ""

   menu_limpar()
   menu_preparar(titulo, subtitulo, descricao)
   menu_exibir_cabecalho()

   se (extrato = ENUM_EXTRATO_COMPLETO) entao
      saida_multilinha(extrato_completo)
   fimse

   se (extrato = ENUM_EXTRATO_LIMITADO_MAIOR) entao
      para loop_i de 1 ate 30 faca
         se (loop_i <= extrato_limitado_maior_quantidade) entao
         se (loop_i > 1) entao
            acumulador := acumulador + "\n"
         fimse
            acumulador := acumulador + extrato_limitado_maior[loop_i]
         fimse
      fimpara
      saida_multilinha(acumulador)
   fimse

   se (extrato = ENUM_EXTRATO_LIMITADO_MENOR) entao
      para loop_i de 1 ate 5 faca
         se (loop_i <= extrato_limitado_menor_quantidade) entao
            se (loop_i > 1) entao
               acumulador := acumulador + "\n"
            fimse
            acumulador := acumulador + extrato_limitado_menor[loop_i]
         fimse
      fimpara
      saida_multilinha(acumulador)
   fimse

   se (extrato = ENUM_EXTRATO_CORRENTE) entao
      saida_multilinha(extrato_corrente)
   fimse

   se (extrato = ENUM_EXTRATO_POUPANCA) entao
      saida_multilinha(extrato_poupanca)
   fimse

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
   descricao := "Pedimos perdão pelo inconveniente, mas essa opção não está pronta ainda. Estamos trabalhando para resolver isso. ;)"

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
   escreval("Insira seu saldo da conta corrente: (real)")
   leia(conta_corrente_saldo)
   escreval("Insira seu saldo da conta poupança: (real)")
   leia(conta_poupanca_saldo)

   adicionar_extrato("Depósito", "Conta Corrente", conta_corrente_saldo, "Abertura da conta")
   adicionar_extrato("Depósito", "Conta Poupança", conta_poupanca_saldo, "Abertura da conta")
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

   adicionar_extrato("Depósito", "Conta Corrente", conta_corrente_saldo, "Abertura da conta")
   adicionar_extrato("Depósito", "Conta Poupança", conta_poupanca_saldo, "Abertura da conta")
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
         menu_tela_deposito()

      caso ID_MENU_DEPOSITO_CORRENTE
         menu_tela_deposito_callback("Corrente")

      caso ID_MENU_DEPOSITO_POUPANCA
         menu_tela_deposito_callback("Poupança")

      caso ID_MENU_EXTRATO
         menu_tela_extrato()

      caso ID_MENU_EXTRATO_COMPLETO
         menu_tela_extrato_callback(ENUM_EXTRATO_COMPLETO)

      caso ID_MENU_EXTRATO_LIMITADO_MAIOR
         menu_tela_extrato_callback(ENUM_EXTRATO_LIMITADO_MAIOR)

      caso ID_MENU_EXTRATO_LIMITADO_MENOR
         menu_tela_extrato_callback(ENUM_EXTRATO_LIMITADO_MENOR)

      caso ID_MENU_EXTRATO_CORRENTE
         menu_tela_extrato_callback(ENUM_EXTRATO_CORRENTE)

      caso ID_MENU_EXTRATO_POUPANCA
         menu_tela_extrato_callback(ENUM_EXTRATO_POUPANCA)

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

   extrato_id: inteiro
   extrato_completo: caracter
   extrato_corrente: caracter
   extrato_poupanca: caracter
   extrato_limitado_maior: vetor[1..30] de caracter
   extrato_limitado_maior_quantidade: inteiro
   extrato_limitado_menor: vetor[1..5] de caracter
   extrato_limitado_menor_quantidade: inteiro

   ENUM_CONTA_POUPANCA: caracter
   ENUM_CONTA_CORRENTE: caracter

   ENUM_EXTRATO_COMPLETO: caracter
   ENUM_EXTRATO_LIMITADO_MAIOR: caracter
   ENUM_EXTRATO_LIMITADO_MENOR: caracter
   ENUM_EXTRATO_CORRENTE: caracter
   ENUM_EXTRATO_POUPANCA: caracter

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
   ID_MENU_EXTRATO: inteiro
   ID_MENU_EXTRATO_COMPLETO: inteiro
   ID_MENU_EXTRATO_LIMITADO_MAIOR: inteiro
   ID_MENU_EXTRATO_LIMITADO_MENOR: inteiro
   ID_MENU_EXTRATO_CORRENTE: inteiro
   ID_MENU_EXTRATO_POUPANCA: inteiro
   ID_MENU_SAIDA: inteiro
   ID_MENU_WIP: inteiro
   ID_MENU_DESPEDIDA: inteiro

procedimento constantes()
inicio
   ENUM_CONTA_CORRENTE := "Corrente"
   ENUM_CONTA_POUPANCA := "Poupança"

   ENUM_EXTRATO_COMPLETO       := "Completo"
   ENUM_EXTRATO_LIMITADO_MAIOR := "Últimas 30 operações"
   ENUM_EXTRATO_LIMITADO_MENOR := "Últimas 5 operações"
   ENUM_EXTRATO_CORRENTE       := "Conta Corrente"
   ENUM_EXTRATO_POUPANCA       := "Conta Poupança"

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
   ID_MENU_EXTRATO                 := hashtxt("extrato")
   ID_MENU_EXTRATO_COMPLETO        := hashtxt("extrato_completo")
   ID_MENU_EXTRATO_LIMITADO_MAIOR  := hashtxt("extrato_limitado_maior")
   ID_MENU_EXTRATO_LIMITADO_MENOR  := hashtxt("extrato_limitado_menor")
   ID_MENU_EXTRATO_CORRENTE        := hashtxt("extrato_corrente")
   ID_MENU_EXTRATO_POUPANCA        := hashtxt("extrato_poupanca")
   ID_MENU_SAIDA                   := hashtxt("saida")
   ID_MENU_WIP                     := hashtxt("wip")
   ID_MENU_DESPEDIDA               := hashtxt("despedida")

fimprocedimento

Inicio
   constantes()
   conta_auto("Eduardo", 500, 10)
   caixa_loop()

Fimalgoritmo