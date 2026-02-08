// List of tables. Lista de tabelas.
// NBR 14724:2024 4.2.1.10

#import "../style/style.typ": font_family_sans

#let list_of_tables() = {
  set text(
    font: font_family_sans,
  )

  // TODO: there should be an em-dash between the numbering and the caption

  outline(
    title: "Lista de tabelas",
    target: figure.where(kind: table),
  )
}
