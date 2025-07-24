// Paper size — NBR 14724:2024 5.1
#let paper_size = "a4"

// Margins — NBR 14724:2024
// TODO: Invert start and end margins for back and front pages
#let margin_top = 3.0cm
#let margin_bottom = 2.0cm
#let margin_start = 3.0cm
#let margin_end = 2.0cm

// Font size — NBR 14724:2024 5.1
#let font_size_for_text = 12pt
#let font_size_for_smaller_text = 10pt

// Leading — NBR 14724:2024 5.2
#let leading_for_text = font_size_for_text * 1.5
#let leading_for_smaller_text = font_size_for_smaller_text * 1.0
#let leading_for_references = font_size_for_text * 1.0

// Spacing — NBR 14724:2024 5.2
#let spacing_for_references = font_size_for_text * 1.0

// // Format headings
// #let format_heading = it => [
//   #let size = if it.level == 1 {
//     font_size_for_section_headings
//   } else {
//     font_size_for_subsection_headings
//   }

//   #text(
//     size: size,
//   )[
//     #counter(heading).display()
//     #it.body
//   ]
// ]

#let page_template(doc) = [
  // Text
  #set text(
    lang: "pt",
    region: "br",
    size: font_size_for_text,
    hyphenate: true,
  )

  // // Paragraphs
  // #set block(
  //   spacing: spacing_before_paragraph,
  // )
  #set par(
    // first-line-indent: 1.27cm,
    leading: leading_for_text,
    justify: true,
  )

  // Headings
  // #set heading(numbering: "1.")

  // Page setup
  #set page(paper: paper_size, margin: (
    top: margin_top,
    right: margin_end,
    bottom: margin_bottom,
    left: margin_start,
  ))

  #doc
]
