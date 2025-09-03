// # Figures. Figuras.
// NBR 14724:2024 5.8, NBR 14724:2024 5.9

#import "../style/style.typ": (
  font_size_for_smaller_text, leading_for_smaller_text, simple_spacing_for_smaller_text, spacing_for_smaller_text,
)
#import "./source.typ": print_source_for_content_created_by_authors

#let format_caption_of_figure(
  width: auto,
  caption,
) = {
  // NBR 14724:2024 5.8
  // The caption of a figure should be in a smaller font size
  set text(
    size: font_size_for_smaller_text,
  )
  set par(
    leading: leading_for_smaller_text,
    spacing: spacing_for_smaller_text,
  )
  // The caption of a figure should have a smaller leading and spacing
  block(
    above: spacing_for_smaller_text,
    below: spacing_for_smaller_text,
    width: width,
  )[#caption]
}

#let format_information_of_figure(
  source: none,
  note: none,
) = context {
  // NBR 14724:2024 5.8
  // Source and notes should be in a smaller font size
  set par(
    first-line-indent: 0em,
    leading: leading_for_smaller_text,
    spacing: simple_spacing_for_smaller_text,
  )
  set text(
    size: font_size_for_smaller_text,
  )
  // Source and notes should be aligned to the left
  set align(start)

  block(
    above: spacing_for_smaller_text,
    below: spacing_for_smaller_text,
  )[
    // Figures must have a source
    Fonte:
    #if source == none {
      [#print_source_for_content_created_by_authors().]
    } else {
      source
    }
    #if note != none {
      parbreak()
      [Nota: #note]
    }
  ]
}

#let include_information_of_figure(
  source: none,
  note: none,
  width: auto,
) = {
  set align(center)
  block(
    above: spacing_for_smaller_text,
    below: spacing_for_smaller_text,
    width: width,
  )[
    #format_information_of_figure(
      source: source,
      note: note,
    )
  ]
}

#let format_figure(
  source: none,
  note: none,
  include_information: false,
  it,
) = {
  layout(size => {
    let width_of_figure_body = measure(
      width: size.width,
      it.body,
    ).width

    block(
      above: spacing_for_smaller_text,
      below: spacing_for_smaller_text,
      breakable: true,
      width: 100%,
    )[
      #block(
        sticky: true,
        width: width_of_figure_body,
        above: spacing_for_smaller_text,
        below: spacing_for_smaller_text,
        format_caption_of_figure(it.caption),
      )
      #show figure: it => {
        align(
          bottom,
          format_figure(it),
        )
      }
      #it.body
      #if include_information {
        include_information_of_figure(
          source: source,
          note: note,
          width: width_of_figure_body,
        )
      }
    ]
  })
}

#let describe_figure(
  source: none,
  note: none,
  placement: none,
  body,
) = {
  set block(breakable: true)

  show figure: it => {
    set block(breakable: true)
    if placement == none {
      format_figure(
        source: source,
        note: note,
        include_information: true,
        it,
      )
    } else {
      let alignment = if (
        placement == auto
      ) {
        auto
      } else if (placement == top or placement == bottom) {
        placement + center
      } else {
        panic("Placement should be one of the following options: none, auto, top, bottom")
      }

      set block(breakable: true)
      place(
        clearance: spacing_for_smaller_text,
        float: true,
        alignment,
        format_figure(
          source: source,
          note: note,
          include_information: true,
          it,
        ),
      )
    }
  }

  body
}
