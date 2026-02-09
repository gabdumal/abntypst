// # Glossary. Glossário.
// NBR 14724:2024 4.2.3.2

#import "../components/glossary.typ": glossary
#import "../components/heading.typ": not_start_on_new_page
#import "../components/page.typ": consider_only_odd_pages, not_number_page

#let include_glossary(
  disable_back_references: true,
  invisible: false,
  print_description: none,
  print_title: none,
  title: "Glossário",
  entries,
) = context {
  let arguments = (
    disable_back_references: disable_back_references,
    invisible: invisible,
    print_description: print_description,
    print_title: print_title,
    title: title,
  )

  // If the glossary must not be printed, no page will be crated for it
  if (invisible == true) {
    glossary(
      ..arguments,
      entries,
    )
  } else {
    not_number_page(
      not_start_on_new_page()[
        #page()[
          #glossary(
            ..arguments,
            entries,
          )
        ]

        #if not consider_only_odd_pages.get() {
          pagebreak(weak: true, to: "odd")
        }
      ],
    )
  }
}
