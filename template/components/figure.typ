// # Figures. Figuras.
// NBR 14724:2024 5.8

#import "../style.typ": font_size_for_smaller_text, leading_for_smaller_text, spacing_for_smaller_text
#import "../components/source.typ": print_source_for_content_created_by_authors

#let describe_figure(
  source: none,
  note: none,
  body,
) = {
  set block(
    below: spacing_for_smaller_text,
  )
  set figure(
    placement: none,
  )

  block()[
    #block(clip: true)[
      #body
    ]
    #place.flush()

    // NBR 14724:2024 5.8
    // Source and notes should be aligned to the left
    // Source and notes should be in a smaller font size
    #set par(
      first-line-indent: 0em,
      leading: leading_for_smaller_text,
      spacing: spacing_for_smaller_text / 2,
    )
    #set text(
      size: font_size_for_smaller_text,
    )
    #set align(start)

    #block()[
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
}
