= Citações

Para incluir uma citação direta, utilize o comando `quote`.
Ele recebe um argumento posicional.
Devemos abrir colchetes após sua chamada e escrever dentro deles a citação.

A @abnt determina que uma citação curta, de até três linhas, deve ser inclusa em texto corrido.
No livro "O que eu vi, o que nós veremos",
#cite(form: "prose", supplement: [p. 49], <dumont:1918:o_que_eu_vi_o_que_nos_veremos>) escreveu
#quote[
  Perguntar-me-á o leitor porque não o construí mais cedo, ao mesmo tempo que os meus dirigíveis
].

Para citações que ocupem mais que três linhas, devemos utilizar dois argumentos na chamada do comando `quote`.
O primeiro é o argumento `block`, que deve ser definido como `true`.

Outro argumento necessário é o `attribution`, em que podemos incluir qualquer texto para descrever a fonte da citação.
Nesse argumento, podemos usar uma das referências já definidas previamente na bibliografia.

#quote(attribution: [@dumont:1918:o_que_eu_vi_o_que_nos_veremos[p. 49].], block: true)[
  Perguntar-me-á o leitor porque não o construí mais cedo, ao mesmo tempo que os meus dirigíveis.
  É que o inventor, como a natureza de Linneu, não faz saltos; progride de manso, evolui.
  Comecei por fazer-me bom piloto de balão livre e só depois ataquei o problema de sua dirigibilidade.
  Fiz-me bom aeronauta no manejo dos meus dirigíveis; durante muitos anos, estudei a fundo o motor a petróleo e só quando verifiquei que o seu estado de perfeição era bastante para fazer voar, ataquei o problema do mais pesado que o ar
]
