// # Figures. Figuras.
// NBR 14724:2024 5.8, NBR 14724:2024 5.9

#import "../components/source.typ": print_source_for_content_created_by_authors
#import "../style.typ": font_size_for_smaller_text, leading_for_smaller_text, spacing_for_smaller_text

#let get_width_of_figure_body(body) = {
  // NBR 14724:2024 5.8
  // The width of the figure body should be the same as the text width
  if (body.has("width")) {
    return body.width
  } else {
    return measure(body).width
  }
  return auto
}

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

#let format_figure(
  figure,
) = {
  // NBR 14724:2024 5.8
  // The caption of a figure should be on top of the figure
  block(
    above: spacing_for_smaller_text,
    below: spacing_for_smaller_text,
    sticky: true,
  )[
    #format_caption_of_figure(figure.caption)
    #figure.body
  ]
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
    spacing: spacing_for_smaller_text,
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
      [Nota: #note]
    }
  ]
}

#let include_description_of_figure(
  source: none,
  note: none,
  width_of_figure_body: auto,
) = {
  set align(center)
  block(
    above: spacing_for_smaller_text,
    below: spacing_for_smaller_text,
    width: width_of_figure_body,
  )[
    #format_information_of_figure(
      source: source,
      note: note,
    )
  ]
}

#let describe_figure(
  source: none,
  note: none,
  width: auto,
  body,
) = {
  show figure: set block(breakable: true)
  block(
    width: 100%,
    breakable: true,
  )[
    #body
    #include_description_of_figure(
      note: note,
      source: source,
      width_of_figure_body: width,
    )
  ]
}

#let include_figure(
  kind: auto,
  supplement: auto,
  numbering: "1",
  outlined: false,
  label: none,
  caption: "Legenda",
  source: none,
  note: none,
  body,
) = context {
  show figure: set block(breakable: true)
  let width_of_figure_body = get_width_of_figure_body(body)

  show figure.caption: it => {
    format_caption_of_figure(
      width: width_of_figure_body,
      it,
    )
  }

  let included_figure = [#figure(
      caption: caption,
      kind: kind,
      supplement: supplement,
      numbering: numbering,
      outlined: outlined,
      body,
    )#label]

  describe_figure(
    source: source,
    note: note,
    width: width_of_figure_body,
    included_figure,
  )
}
