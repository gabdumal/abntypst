// List of figures. Lista de ilustrações.
// NBR 14724:2024 4.2.1.9

#import "../components/heading.typ": not_start_on_new_page
#import "../components/list_of_figures.typ": list_of_figures
#import "../components/page.typ": consider_only_odd_pages, not_count_page, not_number_page

#let include_list_of_figures() = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #list_of_figures()
      ]

      #if not consider_only_odd_pages.get() {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
