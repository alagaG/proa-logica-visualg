// #region [MATEMATICA]
funcao minInt(a,b,): inteiro
inicio
   se (a > b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao maxInt(a,b,): inteiro
inicio
   se (a < b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao limitarInt(valor, min, max,): inteiro
inicio
   se (valor > max) entao
      retorne max
   fimse
   se (valor < min) entao
      retorne min
   fimse
   retorne valor
fimfuncao

funcao minReal(a,b,): real
inicio
   se (a > b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao maxReal(a,b,): real
inicio
   se (a < b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao limitarReal(valor, min, max,): real
inicio
   se (valor > max) entao
      retorne max
   fimse
   se (valor < min) entao
      retorne min
   fimse
   retorne valor
fimfuncao
// #endregion