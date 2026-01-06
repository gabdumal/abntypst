= Introdução <chapter:introduction>

Este projeto visa a fornecer um modelo para redação de trabalhos acadêmicos por meio da ferramenta Typst @typst:2025:typst segundo as @nbr:pl da @abnt.
As normas a seguir são contempladas.

#terms(
  terms.item[
    @nbr 6022:2018
  ][
    Informação e documentação — Artigo em publicação periódica técnica e/ou científica — Apresentação
  ],
  terms.item[
    @nbr 6023:2025
  ][
    Informação e documentação — Referências — Elaboração
  ],
  terms.item[
    @nbr 6024:2012
  ][
    Informação e documentação — Numeração progressiva das seções de um documento — Apresentação
  ],
  terms.item[
    @nbr 6027:2012
  ][
    Informação e documentação — Sumário — Apresentação
  ],
  terms.item[
    @nbr 6028:2021
  ][
    Informação e documentação — Resumo, resenha e recensão — Apresentação
  ],
  terms.item[
    @nbr 6029:2023
  ][
    Informação e documentação — Livros e folhetos — Apresentação
  ],
  terms.item[
    @nbr 6034:2004
  ][
    Informação e documentação — Índice — Apresentação
  ],
  terms.item[
    @nbr 10520:2023
  ][
    Informação e documentação — Citações em documentos — Apresentação
  ],
  terms.item[
    @nbr 10719:2015
  ][
    Informação e documentação — Relatório técnico e/ou científico — Apresentação
  ],
  terms.item[
    @nbr 14724:2024
  ][
    Informação e documentação — Trabalhos acadêmicos — Apresentação
  ],
  terms.item[
    @nbr 15287:2025
  ][
    Informação e documentação — Projeto de pesquisa — Apresentação
  ],
)

== Requisitos

É necessário instalar as seguintes fontes para que o modelo funcione corretamente.
Caso utilize a ferramenta Typst via web, elas já estarão disponíveis.
/ Liberation Sans: para títulos e demais componentes de destaque em fonte sem serifa.
/ Liberation Serif: para o corpo do texto com fonte serifada.
/ Liberation Mono: para trechos de código e texto em destaque com fonte mono-espaçada.
/ New Computer Modern: para texto em blocos de equações matemáticas.
/ New Computer Modern Math: para fórmulas e equações matemáticas.

== Ficha catalográfica

A ficha catalográfica gerada por esse modelo é apenas um exemplo.
Sua instituição provavelmente fornecerá uma página para ser anexada ao projeto.
Caso esse seja um arquivo PDF, você deve convertê-lo para o formato SVG.
Para isso, recomendo o programa #link("https://inkscape.org/release", "Inkscape").
Certifique-se de que você tem instaladas as fontes usadas no arquivo fornecido.

Então, coloque a página no formato SVG dentro da pasta `/academic_work/assets/documents`.
Em seguida, edite o arquivo `/academic_work/content/pre_textual/cataloging_in_publication.typ`, de forma a não usar o comando `include_cataloging_in_publication`, mas sim o comando `include_custom_cataloging_in_publication` com a imagem referente à página a incluir.

== Referências a outros capítulos

É comum encerrar a introdução fazendo uma descrição da estrutura do projeto.
Para isso, você pode chamar as #emph[labels] dos capítulos.
Por exemplo, este capítulo de introdução é o @chapter:introduction.
Já o capítulo de Fundamentação teórica é o @chapter:foundation.
