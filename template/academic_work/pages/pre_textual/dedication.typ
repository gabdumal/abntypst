// # Dedication. Dedicatória.
// NBR 14724:2024 4.2.1.4, NBR 14724:2024 5.2.4

#import "../../../common/components/heading.typ": not_start_on_new_page
#import "../../../common/components/page.typ": counting_strategy, not_count_page, not_number_page

#let include_dedication(
  body,
) = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        // Dedication should not have title or numbering.
        // Dedication should start from the middle of the page to the right, and aligned to the bottom.
        #align(end + bottom)[
          #box(width: 50%)[
            #set align(start)
            #body
          ]
        ]
      ]

      #if counting_strategy.get() == "odd_and_even_pages" {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
