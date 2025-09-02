// # Glossary. Lista de abreviaturas e siglas.
// NBR 14724:2024 4.2.1.11

#import "../../../packages.typ": glossy
#import "../../../components/heading.typ": not_start_on_new_page
#import "../../../style/style.typ": font_family_sans
#import "../../../util/page.typ": not_number_page


#let glossary_theme = (
  section: (title, body) => {
    heading(level: 1, numbering: none, outlined: false, title)
    body
  },
  group: (name, index, total, body) => {
    if name != "" and total > 1 {
      heading(level: 2, name)
    }

    table(
      columns: (1fr, 5fr),
      stroke: none,
      align: (left, left),
      inset: (x, y) => {
        if (x == 0) {
          (left: 0pt, rest: 5pt)
        } else {
          (right: 0pt, rest: 5pt)
        }
      },
      ..body,
    )
  },
  entry: (entry, index, total) => {
    let description = if entry.description != none {
      ". " + entry.description
    }
    (
      table.cell(
        strong[#entry.short] + entry.label,
      ),
      table.cell(
        entry.long + description + h(1fr) + entry.pages,
      ),
    )
  },
)

#let include_glossary() = {
  set text(
    font: font_family_sans,
  )
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        #glossy.glossary(
          title: "Lista de abreviaturas e siglas",
          theme: glossary_theme,
        )
      ]
    ]
  ]
}
