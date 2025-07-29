// # Capa

#import "../../style.typ": font_family_sans
#import "../../util/authors.typ": print_authors
#import "../../util/page.typ": not_count_next_page
#import "../../util/title.typ": print_title

// Following ABNTEX2
#let font_size_for_primary_information = 20pt
#let font_size_for_secondary_information = 14pt

#let set_cover(
  authors: (),
  title: "Título do trabalho",
  subtitle: "Subtítulo do trabalho",
  volume_number: none,
  location: "Local",
  year: "Ano",
) = {
  not_count_next_page()
  page()[
    #set align(center)
    #set text(
      font: font_family_sans,
      size: font_size_for_secondary_information,
    )

    // Institutional information
    #print_authors(
      authors: authors,
    )

    #v(1fr)

    // Title
    #text(
      size: font_size_for_primary_information,
    )[
      #print_title(
        title: title,
        subtitle: subtitle,
        with_weight: true,
      )
    ]

    #v(1fr)

    // Publishing information
    #if volume_number != none [
      Volume #volume_number
      #parbreak()
    ]
    #location
    #parbreak()
    #year
  ]
}
