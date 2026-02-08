// # Epigraph. Epígrafe.
// NBR 14724:2024 4.2.1.6

#import "../components/heading.typ": not_start_on_new_page
#import "../components/page.typ": consider_only_odd_pages, not_number_page
#import "../components/epigraph.typ": epigraph

// ## Epigraph. Epígrafe.
// NBR 14724:2024 4.2.1.6

// NBR 14724:2024 4.2.1.6, NBR 14724:2024 5.2.4, NBR 14724:2024 5.5
// Epigraph on pre-textual elements can present a quote without following long quote formatting, as determined by NBR 14724:2024 4.2.1.6.
#let include_epigraph(
  indent: false,
  smaller_text: false,
  body,
) = context {
  not_number_page(
    not_start_on_new_page()[
      #page(
        // Epigraph should not have title or numbering.
        // Epigraph should start from the middle of the page to the right, and aligned to the bottom.
        align(end + bottom, {
          box(width: 50%, {
            epigraph(
              indent: indent,
              smaller_text: smaller_text,
              body,
            )
          })
        }),
      )

      #if not consider_only_odd_pages.get() {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
