#import "/template/common/components/figure.typ": describe_figure
#import "/template/common/packages.typ": subpar
#import "/template/common/style/style.typ": spacing_for_smaller_text

= Ilustrações

De acordo com a seção 5.8 da @nbr da @abnt  @abnt:short @nbr:short 14724:2024, uma ilustração se trata da
#quote(attribution: <abnt:2025:nbr_14724_2024>)[
  designação genérica de imagem, que ilustra ou elucida um texto
].
Inclui-se nessa categoria desenhos, esquemas, fluxogramas,
fotografias, gráficos, mapas, organogramas, plantas, quadros, retratos, figuras e imagens #cite(<ibge:2023:manual_elaboracao_trabalhos>).

Acima de cada ilustração deve constar uma legenda que descreva brevemente seu conteúdo, iniciada em letra maiúscula e sem finalização com ponto final.
Ela deve ser precedida do termo que melhor a descreve, como "Figura", "Quadro", "Gráfico", etc., seguido de seu número sequencial #cite(<abnt:2025:nbr_14724_2024>).
Em geral, o Typst é capaz de identificar automaticamente o tipo de ilustração e gerar a legenda correta.

Para inserir uma ilustração, deve-se utilizar o comando `figure()`.
Ele recebe como parâmetros: (1) `caption`, a legenda da ilustração; (2) `supplement`, o termo descritor, caso o Typst não seja capaz de inferi-lo; (3) `kind`, o tipo da ilustração, caso seja não trivial, e (4) seu conteúdo; além de demais parâmetros opcionais.

Em seguida está um exemplo de figura.

#figure(
  caption: [Ilustração composta de texto],
  supplement: "Texto",
  kind: "text",
  par()[
    Essa ilustração se trata de uma sequência de frases.\
    Sim, uma ilustração pode ser composta de texto.\
    Ela pode ser utilizada para ilustrar uma ideia ou conceito.
  ],
)

O conteúdo de uma ilustração pode ser uma imagem, a qual deve ser inserida com o comando `image()`.
Ele recebe como parâmetro obrigatório o caminho do arquivo.
Já como opcionais elencam-se: (1) `width`, a largura, que pode ser especificada em centímetros ou em porcentagem em relação à pagina (como `50%`); e (2) `height`, a altura, que pode ser especificada da mesma forma.

Abaixo está um exemplo de ilustração composta por uma imagem, com largura de 10cm e altura de 5cm.
Ela é importada por meio do caminho relativo `/academic_work/assets/images/black_square.png`, que deve ser ajustado de acordo com a estrutura do projeto.
Em seguida está o resultado da execução desse código.

#figure(
  caption: [Retângulo preto],
  image(
    width: 10cm,
    height: 5cm,
    "/academic_work/assets/images/black_square.png",
  ),
)

== Ambiente de descrição

Todas as ilustrações devem ser citadas no texto e inseridas o mais próximo possível da sua primeira citação #cite(<abnt:2025:nbr_14724_2024>).
Para isso, deve-se atribuir um rótulo à ilustração.

Pode-se fazê-lo abrindo aspas angulares após o comando `figure()`, como `<nome_da_ilustracao>`.
Para a ilustração abaixo, o rótulo é `figure:quadrado_preto_sem_fonte`.
Então, para referenciá-la no texto, deve-se utilizar o comando `ref()`, que recebe como parâmetro o rótulo da ilustração.
Alternativamente, pode-se utilizar o caractere "`@`" seguido do rótulo.

Essa é uma referência para a #ref(<figure:quadrado_preto_sem_fonte>).
Essa também é uma referência para a @figure:quadrado_preto_sem_fonte.
#figure(
  caption: [Quadrado preto],
  image(
    "/academic_work/assets/images/black_square.png",
  ),
)<figure:quadrado_preto_sem_fonte>

A @abnt:short @nbr:short 14724:2024 determina que todas as ilustrações apresentem sua fonte.
Elas também podem contar com uma nota explicativa.
Ambas as informações devem ser apresentadas após a ilustração alinhadas à sua margem esquerda.
Além disso, juntamente com a legenda, devem ser apresentadas em fonte menor que a do texto principal e limitadas pela largura da ilustração #cite(<abnt:2025:nbr_14724_2024>).

Para cumprir essa exigência, devemos utilizar o ambiente `describe_figure()` em torno da ilustração.
Esse comando recebe como parâmetros opcionais: (1) `source`, a fonte da ilustração; e (2) `note`, uma nota sobre a ilustração.
Caso a fonte não seja informada, ela será automaticamente preenchida com o texto "elaboração própria".

A @figure:red_square_of_5cm_width_and_5cm_height_without_source_and_note mostra o uso desses parâmetros.

#describe_figure(
  [#figure(
    caption: [Quadrado vermelho],
    rect(height: 5cm, width: 5cm, fill: red),
  )<figure:red_square_of_5cm_width_and_5cm_height_without_source_and_note>],
)

A seguir, temos um exemplo de ilustração com largura de 50% da página e altura de 5cm, sem fonte e sem nota (@figure:red_rectangle_of_50percent_width_and_5cm_height_without_source_and_note) e outra ilustração, com largura de 100% da página e altura de 5cm, sem fonte e sem nota (@figure:red_rectangle_of_100percent_width_and_5cm_height_without_source_and_note).

#describe_figure(
  [#figure(
    caption: [Retângulo vermelho],
    rect(height: 5cm, width: 50%, fill: red),
  )<figure:red_rectangle_of_50percent_width_and_5cm_height_without_source_and_note>],
)

#describe_figure(
  [#figure(
    caption: [Retângulo vermelho largo],
    rect(height: 5cm, width: 100%, fill: red),
  )<figure:red_rectangle_of_100percent_width_and_5cm_height_without_source_and_note>],
)

A @text:ismalia_guimaraes_1960 mostra o resultado do uso do ambiente `describe_figure()` preenchendo os parâmetros de fonte e nota.

#describe_figure(
  source: [
    #cite(<guimaraes:1960:ismalia>, form: "prose").
  ],
  note: [
    Alphonsus Guimarães foi um poeta brasileiro, conhecido por sua obra lírica e simbolista.
  ],
  [#figure(
    caption: [Ismália],
    supplement: [Texto],
    kind: "text",
    text()[
      *Ismália*
      #parbreak()
      Quando Ismália enlouqueceu,\
      Pôs-se na torre a sonhar...\
      Viu uma lua no céu,\
      Viu outra lua no mar.\
      No sonho em que se perdeu,\
      Banhou-se toda em luar...\
      Queria subir ao céu,\
      Queria descer ao mar...\
      E, no desvario seu,\
      Na torre pôs-se a cantar...\
      Estava perto do céu,\
      Estava longe do mar...\
      E como um anjo pendeu\
      As asas para voar...\
      Queria a lua do céu,\
      Queria a lua do mar...\
      As asas que Deus lhe deu\
      Ruflaram de par em par...\
      Sua alma subiu ao céu,\
      Seu corpo desceu ao mar...
    ],
  )<text:ismalia_guimaraes_1960>],
)

A figura @figure:red_rectangle_of_100percent_width_and_5cm_height_with_source_and_note apresenta um retângulo vermelho com largura de 100% da página e altura de 5cm com fonte de autoria e nota geradas automaticamente para ocupar mais de uma linha.

#describe_figure(
  source: [
    #lorem(20)
  ],
  note: [
    #lorem(40)
  ],
  [#figure(
    caption: [#lorem(25)],
    rect(height: 5cm, width: 100%, fill: red),
  )<figure:red_rectangle_of_100percent_width_and_5cm_height_with_source_and_note>],
)

== Posicionamento

Para ilustrações que ficam mal posicionadas na página, como aquelas com altura muito elevada, pode-se utilizar o parâmetro `placement: auto` no ambiente `describe_figure()`, para que o Typst escolha automaticamente a melhor posição para.
A figura @figure:red_rectangle_of_100percent_width_and_20cm_height_with_source_and_note apresenta um retângulo vermelho com largura de 100% da página e altura de 20cm, com fonte de autoria e nota geradas automaticamente para ocupar mais de uma linha.
Nela, o parâmetro `placement: auto` foi definido.

#describe_figure(
  placement: auto,
  source: [
    #lorem(20)
  ],
  note: [
    #lorem(40)
  ],
  [#figure(
    caption: [#lorem(25)],
    rect(
      height: 20cm,
      width: 100%,
      fill: red,
    ),
  )<figure:red_rectangle_of_100percent_width_and_20cm_height_with_source_and_note>],
)

A figura @figure:two_red_rectangles_of_100percent_width_in_a_block_of_width_of_10cm_and_5cm_height_each_with_source_and_note apresenta dois retângulos vermelhos com largura de 100% (em um bloco de 10cm de largura) e altura de 5cm, com uma fonte de autoria e nota.
Ela tem o parâmetro `placement: auto` definido, o que permite ao Typst escolher a melhor posição para a ilustração.

#describe_figure(
  placement: auto,
  source: [
    #lorem(20)
  ],
  note: [
    #lorem(40)
  ],
  [#figure(
    caption: [#lorem(25)],
    block(width: 10cm)[
      #rect(height: 5cm, width: 100%, fill: red)
      #rect(height: 5cm, width: 100%, fill: red)
    ],
  )<figure:two_red_rectangles_of_100percent_width_in_a_block_of_width_of_10cm_and_5cm_height_each_with_source_and_note>],
)

== Sub-ilustrações

Quando for necessário apresentar várias ilustrações que constituem um conteúdo único, pode-se utilizar o ambiente `subpar.super()`, que permite criar sub-ilustrações.
Esse ambiente recebe como parâmetros: (1) `label`, o rótulo da ilustração; (2) `caption`, a legenda da ilustração; e (3) `grid`, que define a grade de sub-ilustrações.
Você pode encapsular o ambiente `subpar.super()` em um `block()` com o parâmetro `sticky: true`, para que as sub-ilustrações sejam dispostas na mesma página.

A @figure:three_subfigures apresenta três sub-ilustrações, cada uma com sua própria legenda.
Esta é a primeira sub-ilustração: @figure:first_sub_figure;
esta é a segunda sub-ilustração: @figure:second_sub_figure; e
esta é a terceira sub-ilustração: @figure:third_sub_figure.

#describe_figure(
  source: [
    #lorem(20)
  ],
  note: [
    #lorem(40)
  ],
  placement: auto,

  block(
    sticky: true,
    subpar.super(
      label: <figure:three_subfigures>,
      caption: [Uma figura composta de três sub-figuras],
      grid(
        columns: (1fr, 1fr),
        row-gutter: spacing_for_smaller_text,
        column-gutter: spacing_for_smaller_text,

        grid.cell()[
          #figure(
            caption: [
              #lorem(5)
            ],
            image("/academic_work/assets/images/black_square.png", width: 5cm),
          )<figure:first_sub_figure>
        ],

        grid.cell()[
          #figure(
            caption: [
              #lorem(10)
            ],
            image(
              "/academic_work/assets/images/black_square.png",
              width: 5cm,
            ),
          )<figure:second_sub_figure>
        ],

        grid.cell(colspan: 2)[
          #figure(
            caption: [
              #lorem(15)
            ],
            image("/academic_work/assets/images/black_square.png", width: 10cm),
          )<figure:third_sub_figure>
        ],
      ),
    ),
  ),
)

== Tipos de ilustrações

A seguir estão os tipos de ilustrações mais comuns, com exemplos de cada um.

=== Figura

Uma figura deve ser inserida com o comando `image()`, que recebe como parâmetro obrigatório o caminho do arquivo.
Ela deve ser inserida dentro do comando `figure()`, que por sua vez deve ser encapsulado no ambiente `describe_figure()`, para que a fonte e a nota sejam apresentadas corretamente.

A @figure:figure_of_an_image_of_a_black_square apresenta uma imagem importada do arquivo `/academic_work/assets/images/black_square.png`, com largura de 10cm e altura ajustada proporcionalmente.

#describe_figure(
  [#figure(
    caption: [Quadrado preto],
    image(
      width: 10cm,
      "/academic_work/assets/images/black_square.png",
    ),
  )<figure:figure_of_an_image_of_a_black_square>],
)

=== Quadro

Um quadro se trata de uma tabela fechada nas extremidades.
Ele deve ter uma legenda iniciada com o termo "Quadro", seguido de seu número sequencial e do título.
Para tal, deve-se utilizar no comando `figure()` o parâmetro `kind: "board"` e o parâmetro `supplement: [Quadro]`.
Então, o conteúdo da ilustração deve ser uma tabela, que pode ser criada com o comando `table()`.

A @figure:figure_of_a_board ilustra o uso do comando `figure()` com o parâmetro `supplement` e o comando `table()`.

#describe_figure(
  [#figure(
    kind: "board",
    supplement: [Quadro],
    caption: [Exemplo de quadro],
    table(
      columns: (1fr, 1fr, 1fr),
      align: center + horizon,

      table.header(
        table.cell()[#strong("Cabeçalho 1")],
        table.cell()[#strong("Cabeçalho 2")],
        table.cell()[#strong("Cabeçalho 3")],
      ),

      table.cell(
        rowspan: 2,
      )[Linhas 1 e 2, Coluna 1],
      table.cell()[Linha 1, Coluna 3],

      table.cell()[Linha 2, Coluna 1],
      table.cell()[Linha 2, Coluna 2],
      table.cell()[Linha 2, Coluna 3],

      table.cell()[Linha 3, Coluna 1],
      table.cell(
        colspan: 2,
      )[Linha 3, Colunas 2 e 3],
    ),
  )<figure:figure_of_a_board>],
)
