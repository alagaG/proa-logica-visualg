// #region [MATEMATICA]
funcao min(a,b,): real
inicio
   se (a > b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao max(a,b,): real
inicio
   se (a < b) entao
      retorne b
   senao
      retorne a
   fimse
fimfuncao

funcao limitar(valor, min, max,): real
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