// ## Paper size — NBR 14724:2024 5.1
#let paper_size = "a4"

// ## Margins — NBR 14724:2024
// TODO: Invert start and end margins for back and front pages
#let margin_top = 3.0cm
#let margin_bottom = 2.0cm
#let margin_start = 3.0cm
#let margin_end = 2.0cm

// ## Font size — NBR 14724:2024 5.1, NBR 6022:2018 6.1
#let font_size_for_level_1_headings = 14pt
#let font_size_for_level_2_headings = 13pt
#let font_size_for_level_3_headings = 12pt
#let font_size_for_common_text = 12pt
#let font_size_for_smaller_text = 10pt

// ## Spacing — NBR 14724:2024 5.2, NBR 6022:2018 6.1
// ### Multipliers
#let spacing_of_one = 1.0
#let spacing_of_one_and_a_half = 1.5
// ### Headings
#let spacing_before_level_1_headings = font_size_for_level_1_headings * spacing_of_one_and_a_half
#let spacing_before_level_2_headings = font_size_for_level_2_headings * spacing_of_one_and_a_half
#let spacing_before_level_3_headings = font_size_for_level_3_headings * spacing_of_one_and_a_half
// ### Common text
#let spacing_between_common_text = font_size_for_common_text * spacing_of_one_and_a_half
#let spacing_between_references = font_size_for_common_text * spacing_of_one

// ## Leading — NBR 14724:2024 5.2
// ### Multipliers
#let leading_of_one = spacing_of_one / 2
#let leading_of_one_and_a_half = spacing_of_one_and_a_half / 2
// ### Text
#let leading_for_text = font_size_for_common_text * leading_of_one_and_a_half
#let leading_for_smaller_text = font_size_for_smaller_text * leading_of_one
#let leading_for_references = font_size_for_common_text * leading_of_one

#let page_template(doc) = [
  // ## Page
  #set page(paper: paper_size, margin: (
    top: margin_top,
    right: margin_end,
    bottom: margin_bottom,
    left: margin_start,
  ))

  // ## Text
  #set text(
    lang: "pt",
    region: "br",
    font: "Liberation Serif",
    size: font_size_for_common_text,
    hyphenate: true,
  )

  // ## Paragraphs
  #set par(
    leading: leading_for_text,
    justify: true,
    // first-line-indent: 1.27cm,
  )

  // ## Headings

  // ### Numbering
  // NBR 14724:2024 5.2.2, NBR 6024:2012 4.1
  // Should use arabic numerals
  // Should start at 1
  // Secondary (and following) headings should be separated by a dot after the number
  #set heading(numbering: "1.")

  // ### Format
  #show heading: it => [
    // NBR 6024:2012 4.1
    // The format of headings should represent their hierarchical level
    // As done by ABNTeX, we use different font sizes for different heading levels

    #let font_size = font_size_for_common_text
    #let spacing_above = spacing_between_common_text
    #let font_weight = "bold"
    #let text_style = "normal"

    #if it.level == 1 {
      // Level 1 headings should start on a new page
      pagebreak(weak: true) // NBR 14724:2024 5.2.2
      // TODO: Guarantee that section starts on odd page
      font_size = font_size_for_level_1_headings
      spacing_above = spacing_before_level_1_headings
    } else if it.level == 2 {
      font_size = font_size_for_level_2_headings
      spacing_above = spacing_before_level_2_headings
    } else if it.level == 3 {
      font_size = font_size_for_level_3_headings
      spacing_above = spacing_before_level_3_headings
    } else if it.level == 4 {
      font_weight = "regular"
    } else if it.level == 5 {
      font_weight = "regular"
      text_style = "italic"
    }

    // Alignment and numbering
    #let alignment = start
    #let numbering_indicator = []
    #if it.numbering == none {
      // NBR 6024:2012 4.1
      // Headings without numbering should be aligned to the center
      alignment = center
    } else {
      numbering_indicator = [
        // There should not be a dot after the last number
        #counter(heading).display().slice(0, -1)
      ]
    }
    #set align(alignment)

    #set text(
      font: "Liberation Sans",
      size: font_size,
      weight: font_weight,
      style: text_style,
    )

    // NBR 14724:2024 5.2.2
    // Headings should have 1,5x of spacing above and 1x of spacing below
    #block(
      above: spacing_above,
      below: spacing_between_common_text,
    )[
      #text[
        // NBR 6024:2012 4.1
        // For headings with multiple lines, each subsequent line should be aligned with the first one
        #grid(
          columns: 2,
          rows: 1,
          // Numbering indicator should be separated from the title by a single space
          column-gutter: measure(sym.dash).width,
          [#numbering_indicator], [#it.body],
        )
      ]
    ]
  ]

  #doc
]
