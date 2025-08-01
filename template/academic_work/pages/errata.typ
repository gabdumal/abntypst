// # Errata

#import "../../components/heading.typ": not_start_on_new_page
#import "../../util/page.typ": not_number_page

// NBR 14724:2024 4.2.1.2
#let include_errata(
  content,
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
        #content
      ]
    ]
  ]
}
