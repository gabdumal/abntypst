#import "style.typ": font_size_for_common_text

#let include_abstract(
  title: { "Resumo" },
  content,
) = {
  set par(first-line-indent: 0em)
  align(left)[
    #set text(
      style: "italic",
      size: font_size_for_common_text,
    )
    #text(weight: "bold")[#title.]
    #content
  ]
}
