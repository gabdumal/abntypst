= Notas de rodapé

Para incluir uma nota de rodapé, utilize o comando `footnote`.
Basta então descrever o conteúdo dentro dos colchetes.
A nota aparecerá no rodapé da página em que for inclusa.

Um uso frequente para notas de rodapé é citar páginas na web.
//
Por exemplo, citemos a página do Typst
#footnote[
  Typst é uma ferramenta para criação de documentos similar ao LaTeX.
  Acesso em:
  #link("https://typst.app/").
].
//
Também podemos utilizar notas de rodapé para descrever com mais detalhes um assunto citado
#footnote[
  Vamos incluir uma nota com várias linhas.
  #lorem(50)
].

#lorem(200)

#lorem(100)

#lorem(50)

#lorem(10)
