// List of figures. Lista de ilustrações.
// NBR 14724:2024 4.2.1.9

#import "../components/heading.typ": not_start_on_new_page
#import "../components/list_of_figures.typ": list_of_figures
#import "../components/page.typ": counting_strategy, not_count_page, not_number_page

#let include_list_of_figures() = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #list_of_figures()
      ]

      #if counting_strategy.get() == "odd_and_even_pages" {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
