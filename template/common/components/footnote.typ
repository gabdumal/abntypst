// # Footnotes. Notas de rodapé.
// NBR 14724:2024 5.2.1

#import "../style/style.typ": (
  font_size_for_smaller_text, simple_leading_for_smaller_text, simple_spacing_for_smaller_text,
)

#let format_footnote_entry(body) = context {
  set text(size: font_size_for_smaller_text)

  // TODO: This is broken on Typst version 0.13.1. Reinclude this when editing notes does not break the link functionality.
  // grid(
  //   columns: 2,
  //   gutter: 0.25em,
  //   body.note, body.note.body,
  // )

  // TODO: Remove this when editing notes does not break the link functionality.
  par(
    leading: simple_leading_for_smaller_text,
    spacing: simple_spacing_for_smaller_text,
    first-line-indent: 0em,
    hanging-indent: measure(body.note).width,
  )[
    #body
  ]
}
