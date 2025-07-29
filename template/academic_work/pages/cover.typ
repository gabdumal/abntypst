// # Capa

#import "../../style.typ": font_family_sans
#import "../../util/page.typ": not_number_next_page
#import "../../components/people.typ": print_people
#import "../../components/title.typ": print_title

// Following ABNTEX2
#let font_size_for_primary_information = 20pt
#let font_size_for_secondary_information = 14pt

#let set_cover(
  authors: {
    (
      (
        first_name: "Fulano",
        middle_name: none,
        last_name: "Fonseca",
        gender: "masculine",
      ),
    )
  },
  title: { "Título do trabalho" },
  subtitle: {
    // "Subtítulo do trabalho"
  },
  volume_number: {
    // "1"
  },
  location: { "Local" },
  year: { "Ano" },
) = {
  not_number_next_page(
    should_count: false,
  )
  page()[
    #set align(center)
    #set text(
      font: font_family_sans,
      size: font_size_for_secondary_information,
    )

    // Institutional information
    #print_people(
      people: authors,
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
