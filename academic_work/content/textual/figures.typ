#import "/template/components/figure.typ": describe_figure, include_figure
#import "/template/packages.typ": subpar
#import "/template/style.typ": spacing_for_smaller_text

= Figuras

Todas as figuras devem ser referenciadas no texto.
Esta é a referência para a primeira figura: @example_figure_of_black_square.

#include_figure(
  label: <example_figure_of_black_square>,
  caption: [#lorem(12)],
  image(
    "../../assets/images/black_square.png",
    width: 10cm,
  ),
)

Este é um exemplo de figura com largura de 5cm e altura de 5cm:
@example_figure_of_red_rectangle_of_5cm_width_and_5cm_height.
#lorem(50)

#include_figure(
  label: <example_figure_of_red_rectangle_of_5cm_width_and_5cm_height>,
  caption: [#lorem(12)],
  rect(height: 5cm, width: 5cm, fill: red),
)

Este é um exemplo de figura com largura de 50% e altura de 5cm: @example_figure_of_red_rectangle_of_50percent_width_and_5cm_height.
#lorem(50)

#include_figure(
  label: <example_figure_of_red_rectangle_of_50percent_width_and_5cm_height>,
  caption: [#lorem(12)],
  rect(height: 5cm, width: 50%, fill: red),
)

Este é um exemplo de figura com largura de 100% e altura de 5cm com uma fonte de autoria e nota: @example_figure_of_red_rectangle_of_100percent_width_and_5cm_height_with_source_and_note.
#lorem(50)

#include_figure(
  label: <example_figure_of_red_rectangle_of_100percent_width_and_5cm_height_with_source_and_note>,
  caption: [#lorem(25)],
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
  rect(height: 5cm, width: 100%, fill: red),
)

Este é um exemplo de figura com largura de 100% e altura de 20cm com uma fonte de autoria e nota: @example_figure_of_red_rectangle_of_100percent_width_and_20cm_height_with_source_and_note.
#lorem(50)

#include_figure(
  label: <example_figure_of_red_rectangle_of_100percent_width_and_20cm_height_with_source_and_note>,
  caption: [#lorem(25)],
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
  block(height: 20cm, width: 100%, fill: red),
)

Este é um exemplo de figura composta de dois retângulos vermelhos com largura de 100% (em um bloco de 10cm de largura) e altura de 5cm, com uma fonte de autoria e nota: @example_figure_of_two_red_rectangles_of_100percent_width_in_a_block_of_width_of_10cm_and_5cm_height_each_with_source_and_note.
#lorem(50)

#include_figure(
  label: <example_figure_of_two_red_rectangles_of_100percent_width_in_a_block_of_width_of_10cm_and_5cm_height_each_with_source_and_note>,
  caption: [#lorem(25)],
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
  box(width: 10cm)[
    #block(height: 5cm, width: 100%, fill: red)
    #block(height: 5cm, width: 100%, fill: red)
  ],
)

Este é um exemplo de figura composta de três sub-figuras, com uma fonte de autoria e nota: @example_figure_of_three_subfigures.
Esta é a primeira sub-figura: @first_sub_figure.
Esta é a segunda sub-figura: @second_sub_figure.
Esta é a terceira sub-figura: @third_sub_figure.
#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],

  subpar.grid(
    caption: [Uma figura composta de três sub-figuras],
    label: <example_figure_of_three_subfigures>,
    columns: (1fr, 1fr),
    row-gutter: spacing_for_smaller_text,
    column-gutter: spacing_for_smaller_text,

    grid.cell()[
      #figure(
        caption: [#lorem(5)],
        image(
          "../../assets/images/black_square.png",
          width: 5cm,
        ),
      )<first_sub_figure>
    ],

    grid.cell()[
      #figure(
        caption: [
          #lorem(10)
        ],
        image(
          "../../assets/images/black_square.png",
          width: 5cm,
        ),
      )<second_sub_figure>
    ],

    grid.cell(colspan: 2)[
      #figure(
        caption: [
          #lorem(15)
        ],
        image(
          "../../assets/images/black_square.png",
          width: 10cm,
        ),
      )<third_sub_figure>
    ],
  ),
)

#lorem(50)
