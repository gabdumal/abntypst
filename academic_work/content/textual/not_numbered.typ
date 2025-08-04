#import "/template/packages.typ": subpar
#import "/template/components/figure.typ": describe_figure

#heading(numbering: none)[
  Título Não Numerado
]

#lorem(100)

#quote(
  block: true,
  attribution: [@tortinhas_quixotescas:2025:repository_dcc166_atv2],
)[
  #lorem(50)
]

#lorem(100)

#describe_figure()[
  #figure(
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure()[
  #figure(
    caption: [#lorem(12)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose").],
)[
  #figure(
    caption: [#lorem(12)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  note: [#lorem(17)],
)[
  #figure(
    caption: [#lorem(12)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose").],
  note: [#lorem(17)],
)[
  #figure(
    caption: [#lorem(12)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose").],
  note: [#lorem(17)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(10)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 10cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 20cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    block(height: 40cm, width: 100%, fill: red),
    caption: [#lorem(25)],
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    [
      #block(height: 5cm, width: 100%, fill: red)
      #block(height: 5cm, width: 100%, fill: red)
    ],
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    [
      #block(height: 5cm, width: 100%, fill: red)
      #block(height: 5cm, width: 100%, fill: red)
      #block(height: 5cm, width: 100%, fill: red)
      #block(height: 5cm, width: 100%, fill: red)
      #block(height: 5cm, width: 100%, fill: red)
    ],
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #figure(
    caption: [#lorem(25)],
    block(height: 5cm, width: 100%, fill: red),
  )
  #figure(
    caption: [#lorem(25)],
    block(height: 5cm, width: 100%, fill: red),
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #subpar.grid(
    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),
    <first_red_block>,

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(10)
      ],
    ),
    <second_red_block>,

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(15)
      ],
    ),
    <third_red_block>,

    columns: (1fr, 1fr),
    caption: [Uma figura composta de três sub-figuras],
    label: <red_blocks>,
  )
]

#lorem(50)

#describe_figure(
  source: [#cite(<tortinhas_quixotescas:2025:repository_dcc166_atv2>, form: "prose"). #lorem(15)],
  note: [#lorem(30)],
)[
  #subpar.grid(
    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    figure(
      block(
        height: 5cm,
        width: 100%,
        fill: red,
      ),
      caption: [
        #lorem(5)
      ],
    ),

    columns: (1fr, 1fr),
    caption: [#lorem(20)],
  )
]

#lorem(50)
