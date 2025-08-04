// # Figures. Figuras.
// NBR 14724:2024 5.8, NBR 14724:2024 5.9

#import "../style.typ": font_size_for_smaller_text, leading_for_smaller_text, spacing_for_smaller_text
#import "../components/source.typ": print_source_for_content_created_by_authors

#let get_width_of_figure_body(body) = {
  // NBR 14724:2024 5.8
  // The width of the figure body should be the same as the text width
  if (body.has("body")) {
    if (body.body.has("width")) {
      return body.body.width
    }
  }
  return auto
}

#let format_figure(body) = context {
  block(
    width: get_width_of_figure_body(body),
    below: spacing_for_smaller_text,
  )[
    #block(
      below: spacing_for_smaller_text,
    )[
      #body.caption
    ]
    #body.body
  ]
}

#let describe_figure(
  source: none,
  note: none,
  vertical_alignment: none,
  body,
) = context {
  let width_of_body = get_width_of_figure_body(body)
  let alignment = if (vertical_alignment == bottom) {
    center + bottom
  } else if (vertical_alignment == top) {
    center + top
  } else {
    auto
  }

  place(
    float: true,
    alignment,
  )[
    #block(
      width: width_of_body,
    )[
      // Content. Conteúdo.
      #block(
        clip: true,
        below: spacing_for_smaller_text,
      )[
        #body
      ]
      #place.flush()

      // NBR 14724:2024 5.8
      // Source and notes should be in a smaller font size
      #set par(
        first-line-indent: 0em,
        leading: leading_for_smaller_text,
        spacing: spacing_for_smaller_text / 2,
      )
      #set text(
        size: font_size_for_smaller_text,
      )
      // Source and notes should be aligned to the left
      #set align(start)

      #block(
        below: spacing_for_smaller_text,
      )[
        // NBR 14724:2024 5.8
        // Figures must have a source
        Fonte:
        #if source == none [
          #print_source_for_content_created_by_authors().
        ] else [
          #source
        ]

        #if note != none [
          Nota: #note
        ]
      ]
    ]
  ]
}
