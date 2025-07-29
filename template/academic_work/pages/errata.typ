// # Errata

#import "../../util/heading.typ": not_start_on_new_page
#import "../../util/page.typ": not_number_page

#let include_errata(
  content: { "Conteúdo da errata." },
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
