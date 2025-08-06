// # Cover. Capa.
// NBR 14724:2024 4.1.1

#import "../../../style/style.typ": font_family_sans
#import "../../../components/heading.typ": not_start_on_new_page
#import "../../../util/page.typ": not_count_page, not_number_page
#import "../../../components/people.typ": print_people
#import "../../../components/title.typ": print_title
#import "../../components/institutional_information.typ": print_institutional_information

#let include_cover(
  organization: {
    (
      name: "Nome da organização",
      gender: "masculine",
    )
  },
  institution: {
    // (
    //   name: "Nome da instituição",
    //   gender: "masculine",
    // )
  },
  program: {
    // (
    //   name: "Nome do programa",
    //   gender: "masculine",
    // )
  },
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
  address: { "Local" },
  year: { "Ano" },
) = {
  not_number_page()[
    #not_count_page()[
      #not_start_on_new_page()[
        #page()[
          #set align(center)
          #set text(
            font: font_family_sans,
          )

          // Institutional information
          #text(
            weight: "bold",
          )[
            #print_institutional_information(
              organization: organization,
              program: program,
              institution: institution,
            )
          ]

          #v(0.5fr)

          // Authors
          #print_people(
            people: authors,
          )

          #v(0.5fr)

          // Title
          #print_title(
            title: title,
            subtitle: subtitle,
            with_weight: true,
          )

          #v(1fr)

          // Publishing information
          #if volume_number != none [
            Volume #volume_number
            #parbreak()
          ]
          #address
          #linebreak()
          #year
        ]
      ]
    ]
  ]
}
