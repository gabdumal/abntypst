// Font family
#let serif_font_family = "New Computer Modern"
#let mono_font_family = "New Computer Modern Mono"

// Font size
#let font_size = 12pt
#let font_size_for_title = 16pt
#let font_size_for_authors = 12pt
#let font_size_for_institutions = 12pt
#let font_size_for_emails = 10pt
#let font_size_for_abstract = 12pt
#let font_size_for_section_headings = 13pt
#let font_size_for_subsection_headings = 12pt

// Spacing
#let spacing_before_paragraph = 12pt
#let spacing_after_header_elements = 18pt

// Format headings
#let format_heading = it => [
  #let size = if it.level == 1 {
    font_size_for_section_headings
  } else {
    font_size_for_subsection_headings
  }

  #text(
    size: size,
  )[
    #counter(heading).display()
    #it.body
  ]
]

#let page_template(doc) = [
  // Paragraphs
  #set block(
    spacing: spacing_before_paragraph,
  )
  #set par(
    first-line-indent: 1.27cm,
    spacing: spacing_before_paragraph,
    justify: true,
  )

  // Text
  #set text(
    lang: "pt",
    region: "br",
    size: font_size,
    hyphenate: true,
    font: serif_font_family,
  )

  // Headings
  #set heading(numbering: "1.")
  #show heading: it => [
    #block(
      above: spacing_before_paragraph * 2,
      below: spacing_before_paragraph,
    )[
      #format_heading(it)
    ]
  ]

  // Page setup
  #set page(
    paper: "a4",
    columns: 1,
    margin: (
      top: 3.5cm,
      right: 3.0cm,
      bottom: 2.5cm,
      left: 3.0cm,
    ),
    header: none,
    footer: none,
    numbering: none,
  )

  #doc
]
