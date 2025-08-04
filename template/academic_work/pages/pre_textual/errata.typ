// # Errata. Errata.
// NBR 14724:2024 4.2.1.2

#import "../../../components/heading.typ": not_start_on_new_page
#import "../../../util/page.typ": not_number_page

#let include_errata(
  body,
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        #heading(
          numbering: none,
          outlined: false,
        )[
          Errata
        ]
        #body
      ]
    ]
  ]
}
