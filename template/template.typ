#import "./common/components/bibliography.typ": format_bibliography
#import "./common/components/heading.typ": format_heading
#import "./common/components/page.typ": (
  consider_only_odd_pages as consider_only_odd_pages_state, format_header, should_count_this_page,
  should_number_this_page,
)
#import "./common/components/quote.typ": format_quote
#import "./common/packages.typ": subpar
#import "./common/style/style.typ": (
  font_family_math, font_family_mono, font_family_serif, font_size_for_common_text, font_size_for_smaller_text,
  leading_for_common_text, margin_bottom, margin_end, margin_start, margin_top, paper_size, spacing_for_common_text,
)

#let template(
  doc,
  number_pages: false,
  // Whether to  print content on the back of pages — required.
  consider_only_odd_pages: true,
) = {
  consider_only_odd_pages_state.update(consider_only_odd_pages)

  // ## Page. Página.
  // NBR 14724:2024 5.1
  // When the document is printed double-sided, the inner margin should be larger than the outer margin
  let margin = if consider_only_odd_pages {
    (
      top: margin_top,
      right: margin_end,
      bottom: margin_bottom,
      left: margin_start,
    )
  } else {
    (
      top: margin_top,
      outside: margin_end,
      bottom: margin_bottom,
      inside: margin_start,
    )
  }
  set page(
    paper: paper_size,
    margin: margin,
    header: format_header(number_pages),
  )

  // ## Text. Texto.
  set text(
    lang: "pt",
    region: "br",
    font: font_family_serif,
    size: font_size_for_common_text,
    hyphenate: true,
  )
  show raw: set text(font: font_family_mono)
  show math.equation: set text(font: font_family_math)

  // ## Paragraphs. Parágrafos.
  set par(
    first-line-indent: (
      // Following abnTEX2
      amount: 1.3cm,
      all: true,
    ),
    leading: leading_for_common_text,
    spacing: spacing_for_common_text,
    justify: true,
  )

  // ## Headings. Títulos.

  // ### Numbering. Numeração.
  // NBR 14724:2024 5.2.2, NBR 6024:2012 4.1
  // Should use Arabic numerals
  // Should start at 1
  // Secondary (and following) headings should be separated by a dot after the number
  set heading(numbering: "1.1")

  // ### Format. Formatação.
  show heading: it => {
    format_heading(
      it,
    )
  }

  // ## Quotes. Citações.
  show quote: it => {
    // Long quotes (more than 3 lines) should be blocks.
    if it.block {
      format_quote(it)
    } else {
      it
    }
  }

  // ## Figures. Figuras.
  // NBR 14724:2024 5.8
  set figure.caption(
    // The caption of a figure should be on top of the figure
    // The indicator and numbering of the figure should be separated by a em-dash from the following caption text
    position: top,
    separator: [ #sym.dash.em ],
  )

  // ## Bibliography. Referências.
  // NBR 6023:2025 6, NBR 14724:2024 4.2.3.1
  set bibliography(
    // The bibliography should be formatted according to the ABNT style
    style: "/template/common/style/bibliography_style.csl",
    title: "Referências",
  )
  show bibliography: it => {
    format_bibliography(it)
  }

  doc
}
