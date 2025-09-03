// # Glossary. Glossário.
// NBR 14724:2024 4.2.3.2

#import "../components/glossary.typ": glossary
#import "../components/heading.typ": not_start_on_new_page
#import "../components/page.typ": consider_only_odd_pages, not_count_page, not_number_page

#let include_glossary(title: "Glossário", entries) = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #glossary(
          title: title,
          entries,
        )
      ]

      #if not consider_only_odd_pages.get() {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
