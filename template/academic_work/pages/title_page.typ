// # Folha de rosto

#import "../../style.typ": font_family_sans, font_family_serif, font_size_for_common_text
#import "../../components/advisors.typ": get_advisor_title
#import "../../util/page.typ": not_number_next_page
#import "../../components/people.typ": print_people, print_person
#import "../../util/text.typ": capitalize_first_letter
#import "../../components/title.typ": print_title
#import "../components/institutional_information.typ": print_institutional_information
#import "../components/nature.typ": print_nature

// Following ABNTEX2
#let font_size_for_primary_information = 17pt
#let font_size_for_secondary_information = 14pt
#let font_size_for_tertiary_information = font_size_for_common_text

#let set_title_page(
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
  organization: {
    (
      name: "Nome da organização",
      gender: "masculine",
    )
  },
  program: {
    // (
    //   name: "Nome do programa",
    //   gender: "masculine",
    // )
  },
  institution: {
    // (
    //   name: "Nome da instituição",
    //   gender: "masculine",
    // )
  },
  department: {
    // (
    //   name: "Nome do departamento",
    //   gender: "masculine",
    // )
  },
  type_of_work: {
    // (
    //   name: "trabalho de conclusão de curso",
    //   gender: "masculine",
    // )
  },
  degree: {
    // (
    //   name: "bacharelado",
    //   title: (
    //     masculine: "bacharel",
    //     feminine: "bacharela",
    //   ),
    // )
  },
  degree_topic: { "Tema do trabalho" },
  area_of_concentration: {
    // "Área de concentração"
  },
  advisors: {
    (
      (
        first_name: "Ciclana",
        middle_name: "de",
        last_name: "Castro",
        gender: "feminine",
        prefix: {
          // "Profª Drª"
        },
      ),
    )
  },
  volume_number: {
    // "1"
  },
  location: { "Local" },
  year: { "Ano" },
  custom_nature: {
    "Natureza do trabalho."
  },
) = {
  not_number_next_page()
  page()[
    #set align(center)
    #set text(
      size: font_size_for_secondary_information,
    )

    // Authors
    #text(
      font: font_family_sans,
    )[
      #print_people(
        people: authors,
      )
    ]

    #v(1fr)

    // Title
    #text(
      font: font_family_sans,
      size: font_size_for_primary_information,
    )[
      #print_title(
        title: title,
        subtitle: subtitle,
        with_weight: true,
      )
    ]

    #v(1fr)

    #align(end)[
      #box(width: 50%)[
        #set align(start)
        #text(
          size: font_size_for_tertiary_information,
        )[
          #if custom_nature != none [
            #custom_nature
          ] else [
            #print_nature(
              authors: authors,
              organization: organization,
              program: program,
              type_of_work: type_of_work,
              degree: degree,
              degree_topic: degree_topic,
              area_of_concentration: area_of_concentration,
            )
          ]
        ]
      ]
    ]

    #v(1fr)

    #text(
      size: font_size_for_tertiary_information,
    )[
      #print_institutional_information(
        organization: organization,
        institution: institution,
        program: program,
      )
    ]

    #v(1fr)

    // Advisors
    #let is_first_advisor = true
    #for advisor in advisors {
      text()[
        #capitalize_first_letter(get_advisor_title(gender: advisor.gender, is_co_advisor: not is_first_advisor)):
        #advisor.prefix
        #print_person(person: advisor)
        #parbreak()
      ]
      is_first_advisor = false
    }

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
