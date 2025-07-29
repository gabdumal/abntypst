#import "style.typ": (
  font_family_sans, font_family_serif, font_size_for_common_text, font_size_for_smaller_text, leading_for_common_text,
  margin_bottom, margin_end, margin_start, margin_top, paper_size, spacing_for_common_text,
)
#import "util/heading.typ": get_styling_for_heading
#import "util/heading.typ": should_start_on_new_page
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


  #show heading: it => [
    // NBR 6024:2012 4.1
    // The format of headings should represent their hierarchical level
    // As done by abnTEX2, we use different font sizes for different heading levels

    // Styling
    #let (
      font_size,
      spacing_around,
      font_weight,
      text_style,
    ) = get_styling_for_heading(it)
    #set text(
      font: font_family_sans,
      size: font_size,
      weight: font_weight,
      style: text_style,
    )

    // Level 1 headings should start on a new page
    #if it.level == 1 {
      if should_start_on_new_page.get() {
        pagebreak(weak: true) // NBR 14724:2024 5.2.2
        // TODO: If considering odd/even pages, sections should start on odd pages
      }
    }

    // Alignment and numbering
    #let alignment = start
    #let numbering_indicator = {}
    #if it.numbering == none {
      // NBR 6024:2012 4.1
      // Headings without numbering should be aligned to the center
      alignment = center
    } else {
      numbering_indicator = {
        counter(heading).display(it.numbering)
      }
    }
    #set align(alignment)

    // NBR 14724:2024 5.2.2
    // Headings should have 1.5x of spacing above and below
    #block(
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
          [#numbering_indicator], [#it.body],
        )
      ]
    ]
  ]

  #doc
]
