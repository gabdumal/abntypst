#import "style.typ": font_size_for_abstract

#let define_abstract(
  title: str,
  content,
) = {
  place(top + center, scope: "parent", float: true, block(pad(
    x: 0.8cm,
  )[
    #align(left)[
      #set text(
        style: "italic",
        size: font_size_for_abstract,
      )
      #text(weight: "bold")[#title.]
      #content
    ]
  ]))
}
