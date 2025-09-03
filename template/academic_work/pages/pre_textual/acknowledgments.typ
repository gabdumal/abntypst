// # Acknowledgments. Agradecimentos.
// NBR 14724:2024 4.2.1.6

#import "../../../common/components/heading.typ": not_start_on_new_page
#import "../../../common/components/page.typ": counting_strategy, not_count_page, not_number_page

#let include_acknowledgments(
  body,
) = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #heading(
          numbering: none,
          outlined: false,
        )[
          Agradecimentos
        ]
        #body
      ]

      #if counting_strategy.get() == "odd_and_even_pages" {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
