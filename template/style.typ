// Paper size — NBR 14724:2024 5.1
#let paper_size = "a4"

// Margins — NBR 14724:2024
// TODO: Invert start and end margins for back and front pages
#let margin_top = 3.0cm
#let margin_bottom = 2.0cm
#let margin_start = 3.0cm
#let margin_end = 2.0cm

// Font size — NBR 14724:2024 5.1
#let font_size_for_level_1_headings = 14pt
#let font_size_for_level_2_headings = 13pt
#let font_size_for_level_3_headings = 12pt
#let font_size_for_common_text = 12pt
#let font_size_for_smaller_text = 10pt

// Spacing — NBR 14724:2024 5.2
/// Multipliers
#let spacing_of_one = 1.0
#let spacing_of_one_and_a_half = 1.5
/// Headings
#let spacing_before_level_1_headings = font_size_for_level_1_headings * spacing_of_one_and_a_half
#let spacing_before_level_2_headings = font_size_for_level_2_headings * spacing_of_one_and_a_half
#let spacing_before_level_3_headings = font_size_for_level_3_headings * spacing_of_one_and_a_half
/// Common text
#let spacing_between_common_text = font_size_for_common_text * spacing_of_one_and_a_half
#let spacing_between_references = font_size_for_common_text * spacing_of_one

// Leading — NBR 14724:2024 5.2
/// Multipliers
#let leading_of_one = spacing_of_one / 2
#let leading_of_one_and_a_half = spacing_of_one_and_a_half / 2
/// Text
#let leading_for_text = font_size_for_common_text * leading_of_one_and_a_half
#let leading_for_smaller_text = font_size_for_smaller_text * leading_of_one
#let leading_for_references = font_size_for_common_text * leading_of_one

#let page_template(doc) = [
  // Page
  #set page(paper: paper_size, margin: (
    top: margin_top,
    right: margin_end,
    bottom: margin_bottom,
    left: margin_start,
  ))

  // Text
  #set text(
    lang: "pt",
    region: "br",
    font: "Liberation Serif",
    size: font_size_for_common_text,
    hyphenate: true,
  )

  // Paragraphs
  #set block()
  #set par(
    // first-line-indent: 1.27cm,
    leading: leading_for_text,
    justify: true,
  )

  // Headings
  #set heading(numbering: "1.") // NBR 14724:2024 5.2.2
  #show heading: it => [
    #let font_size = if it.level == 1 {
      font_size_for_level_1_headings
    } else if it.level == 2 {
      font_size_for_level_2_headings
    } else if it.level == 3 {
      font_size_for_level_3_headings
    } else {
      font_size_for_common_text
    }

    #let spacing_above = if it.level == 1 {
      spacing_before_level_1_headings
    } else if it.level == 2 {
      spacing_before_level_2_headings
    } else if it.level == 3 {
      spacing_before_level_3_headings
    } else {
      spacing_between_common_text
    }

    #set text(
      size: font_size,
      font: "Liberation Sans",
    )

    // Start level 1 headings on a new page
    #if it.level == 1 {
      pagebreak(weak: true) // NBR 14724:2024 5.2.2
      // TODO: Guarantee that section starts on odd page
    }

    #block(
      above: spacing_above, // NBR 14724:2024 5.2.2
      below: spacing_between_common_text, // NBR 14724:2024 5.2.2
    )[
      // NBR 14724:2024 5.2.2
      #if it.numbering != none {
        counter(heading).display().slice(0, -1) // Remove the last dot
      }
      #it.body
    ]
  ]

  #doc
]
