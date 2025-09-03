// # Glossary. Glossário.
// NBR 14724:2024 4.2.3.2

#import "../components/glossary.typ": glossary
#import "../components/heading.typ": not_start_on_new_page
#import "../components/page.typ": counting_strategy, not_count_page, not_number_page

#let include_glossary(title: "Glossário", entries) = context {
  not_number_page(
    not_start_on_new_page()[
      #page()[
        #glossary(
          title: title,
          entries,
        )
      ]

      #if counting_strategy.get() == "odd_and_even_pages" {
        pagebreak(weak: true, to: "odd")
      }
    ],
  )
}
