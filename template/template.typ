#import "components/heading.typ": format_heading
#import "components/quote.typ": format_quote
#import "packages.typ": subpar
#import "style/style.typ": (
  font_family_serif, font_size_for_common_text, font_size_for_smaller_text, leading_for_common_text, margin_bottom,
  margin_end, margin_start, margin_top, paper_size, spacing_for_common_text,
)
#import "util/page.typ": should_count_this_page, should_number_this_page

#let template(
  doc,
  page_numbering: false,
) = [
  // ## Page. Página.
  #set page(
    paper: paper_size,
    margin: (
      top: margin_top,
      right: margin_end,
      bottom: margin_bottom,
      left: margin_start,
    ),
    header: context {
      if page_numbering {
        // Display page number in the header
        if should_number_this_page.get() {
          align(end)[
            #text(
              font: font_family_serif,
              size: font_size_for_smaller_text,
            )[
              #counter(page).display()
            ]
          ]
        }

        // Regress page counter if this page should not be counted
        if not should_count_this_page.get() {
          counter(page).update(n => n - 1)
        }
      }
    },
  )

  // ## Text. Texto.
  #set text(
    lang: "pt",
    region: "br",
    font: font_family_serif,
    size: font_size_for_common_text,
    hyphenate: true,
  )

  // ## Paragraphs. Parágrafos.
  #set par(
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
  // Should use arabic numerals
  // Should start at 1
  // Secondary (and following) headings should be separated by a dot after the number
  #set heading(numbering: "1.1")

  // ### Format. Formatação.
  #show heading: it => {
    format_heading(it)
  }

  // ## Quotes. Citações.
  #show quote: it => {
    // Long quotes (more than 3 lines) should be blocks.
    if it.block {
      format_quote(it)
    }
  }

  // ## Figures. Figuras.
  // NBR 14724:2024 5.8
  #set figure.caption(
    // The caption of a figure should be on top of the figure
    // The indicator and numbering of the figure should be separated by a em-dash from the following caption text
    position: top,
    separator: [ #sym.dash.em ],
  )

  // ## Bibliography. Referências.
  // NBR 14724:2024 4.2.3.1
  #set bibliography(
    // The bibliography should be formatted according to the ABNT style
    style: "style/bibliography_style.csl",
    title: "Referências",
  )

  #doc
]
