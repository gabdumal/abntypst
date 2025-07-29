// # Errata

#import "../../util/page.typ": not_number_next_page

#let include_errata(
  content: { "Conteúdo da errata." },
) = {
  not_number_next_page()
  page()[
    #heading(
      numbering: none,
      outlined: false,
    )[
      Errata
    ]
    #content
  ]
}
