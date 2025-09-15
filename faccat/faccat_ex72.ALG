Algoritmo "FACCAT - Ex. 72"
// Disciplina  : [Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Lê 15 produtos - código e preço - e apresenta o mais caro e a
//               média dos preços.
// Autor(a)    : Matheus de Oliveira Caldas
// Data atual  : 04/09/2025
Var
   contador: inteiro
   produto_codigo: caracter
   produto_preco: real
   preco_maior: real
   preco_media: real

Inicio
   contador := 1
   enquanto (contador <= 15) faca
      escreval("Insira o código do "+numpcarac(contador)+"° produto: (caracter)")
      leia(produto_codigo)
      escreval("Insira o preço desse produto: (real)")
      leia(produto_preco)
      escreval()

      se (produto_preco > preco_maior) entao
         preco_maior := produto_preco
      fimse
      preco_media := preco_media + produto_preco / 15
      contador := contador + 1
   fimenquanto
   escreval("O maior preço digitado foi: "+numpcarac(preco_maior))
   escreval("A média dos preços digitados é: "+numpcarac(preco_media))

Fimalgoritmo