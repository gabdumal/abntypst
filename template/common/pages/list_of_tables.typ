// List of tables. Lista de tabelas.
// NBR 14724:2024 4.2.1.10

#import "../components/heading.typ": not_start_on_new_page
#import "../components/list_of_tables.typ": list_of_tables
#import "../components/page.typ": counting_strategy, not_count_page, not_number_page

#let include_list_of_tables() = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #list_of_tables()
      ]

      #if counting_strategy.get() == "odd_and_even_pages" {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
