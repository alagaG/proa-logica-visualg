// #region [ENTRADA]
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
// #endregion