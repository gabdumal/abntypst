// List of tables. Lista de tabelas.
// NBR 14724:2024 4.2.1.10

#import "../components/heading.typ": not_start_on_new_page
#import "../components/list_of_tables.typ": list_of_tables
#import "../components/page.typ": consider_only_odd_pages, not_count_page, not_number_page

#let include_list_of_tables() = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #list_of_tables()
      ]

      #if not consider_only_odd_pages.get() {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
