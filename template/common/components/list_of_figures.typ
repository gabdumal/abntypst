// List of figures. Lista de ilustrações.
// NBR 14724:2024 4.2.1.9

#import "../style/style.typ": font_family_sans

#let list_of_figures() = {
  set text(
    font: font_family_sans,
  )

  show outline.entry: it => {
    let kind = it.element.kind
    if kind != table {
      it
    }
  }

  outline(
    title: "Lista de ilustrações",
    target: figure,
  )
}
