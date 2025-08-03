// # Títulos

#import "../style.typ": (
  font_family_sans, font_size_for_common_text, font_size_for_level_1_headings, font_size_for_level_2_headings,
  font_size_for_level_3_and_beyond_headings, spacing_for_level_1_headings, spacing_for_level_2_headings,
  spacing_for_level_3_and_beyond_headings,
)

#let should_start_on_new_page = state(
  "should_start_on_new_page",
  true,
)

#let get_styling_for_heading(content) = {
  let font_size = font_size_for_common_text
  let spacing_around = spacing_for_level_3_and_beyond_headings
  let font_weight = "bold"
  let text_style = "normal"

  if content.level == 1 {
    font_size = font_size_for_level_1_headings
    spacing_around = spacing_for_level_1_headings
  } else if content.level == 2 {
    font_size = font_size_for_level_2_headings
    spacing_around = spacing_for_level_2_headings
  } else if content.level == 3 {
    font_size = font_size_for_level_3_and_beyond_headings
  } else if content.level == 4 {
    font_weight = "regular"
  } else if content.level == 5 {
    font_weight = "regular"
    text_style = "italic"
  }

  return (font_size, spacing_around, font_weight, text_style)
}

#let not_start_on_new_page(
  content,
) = {
  should_start_on_new_page.update(false)
  content
  should_start_on_new_page.update(true)
}

#let format_heading(content) = {
  // NBR 6024:2012 4.1
  // The format of headings should represent their hierarchical level
  // As done by abnTEX2, we use different font sizes for different heading levels

  // Styling
  let (
    font_size,
    spacing_around,
    font_weight,
    text_style,
  ) = get_styling_for_heading(content)
  set text(
    font: font_family_sans,
    size: font_size,
    weight: font_weight,
    style: text_style,
  )

  // Level 1 headings should start on a new page
  if content.level == 1 {
    if should_start_on_new_page.get() {
      pagebreak(weak: true) // NBR 14724:2024 5.2.2
      // TODO: If considering odd/even pages, sections should start on odd pages
    }
  }

  // Alignment and numbering
  let alignment = start
  let numbering_indicator = {}
  if content.numbering == none {
    // NBR 6024:2012 4.1
    // Headings without numbering should be aligned to the center
    alignment = center
  } else {
    numbering_indicator = {
      counter(heading).display(content.numbering)
    }
  }
  set align(alignment)

  // NBR 14724:2024 5.2.2
  // Headings should have 1.5x of spacing above and below
  block(
    above: spacing_around,
    below: spacing_around,
  )[
    #text[
      // NBR 6024:2012 4.1
      // For headings with multiple lines, each subsequent line should be aligned with the first one
      #grid(
        columns: 2,
        rows: 1,
        // Numbering indicator should be separated from the title by a single space
        column-gutter: measure(sym.dash).width,
        [#numbering_indicator], [#content.body],
      )
    ]
  ]
}
