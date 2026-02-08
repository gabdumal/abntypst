// # Errata. Errata.
// NBR 14724:2024 4.2.1.2

#import "../../../common/components/heading.typ": not_start_on_new_page
#import "../../../common/components/page.typ": consider_only_odd_pages, not_count_page, not_number_page

#let include_errata(
  body,
) = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #heading(
          numbering: none,
          outlined: false,
        )[
          Errata
        ]
        #body
      ]

      #if not consider_only_odd_pages.get() {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
