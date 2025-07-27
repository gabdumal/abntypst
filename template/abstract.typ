#import "style.typ": font_size_for_common_text

#let include_abstract(
  title: str,
  content,
) = {
  pad(
    x: 0.8cm,
  )[
    #align(left)[
      #set text(
        style: "italic",
        size: font_size_for_common_text,
      )
      #text(weight: "bold")[#title.]
      #content
    ]
  ]
}
