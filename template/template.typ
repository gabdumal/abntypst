#import "components/quote.typ": format_quote
#import "style.typ": (
  font_family_serif, font_size_for_common_text, font_size_for_smaller_text, leading_for_common_text, margin_bottom,
  margin_end, margin_start, margin_top, paper_size, spacing_for_common_text,
)
#import "components/heading.typ": format_heading
#import "util/page.typ": should_count_this_page, should_number_this_page

#let template(
  doc,
  page_numbering: false,
) = [
  // ## Page
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

  // ## Text
  #set text(
    lang: "pt",
    region: "br",
    font: font_family_serif,
    size: font_size_for_common_text,
    hyphenate: true,
  )

  // ## Paragraphs
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

  // ## Headings
  // ### Numbering
  // NBR 14724:2024 5.2.2, NBR 6024:2012 4.1
  // Should use arabic numerals
  // Should start at 1
  // Secondary (and following) headings should be separated by a dot after the number
  #set heading(numbering: "1.1")
  // ### Format
  #show heading: it => {
    format_heading(it)
  }

  // ## Quotes
  #show quote: it => {
    // Long quotes (more than 3 lines) should be blocks.
    if it.block {
      format_quote()[#it]
    }
  }

  #doc
]
