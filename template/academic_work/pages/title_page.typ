// # Folha de rosto

#import "../../style.typ": font_family_sans, font_family_serif, font_size_for_common_text
#import "../../util/authors.typ": print_authors
#import "../../util/gender.typ": get_gender_ending
#import "../../util/page.typ": not_count_next_page
#import "../../util/title.typ": print_title
#import "../components/institutional_information.typ": print_institutional_information
#import "../components/nature.typ": print_nature

// Following ABNTEX2
#let font_size_for_primary_information = 17pt
#let font_size_for_secondary_information = 14pt
#let font_size_for_tertiary_information = font_size_for_common_text

#let set_title_page(
  authors: (),
  title: "Título do trabalho",
  subtitle: none,
  organization: "Nome da organização",
  program: none,
  institution: none,
  department: none,
  type_of_work: none,
  degree: none,
  degree_topic: none,
  area_of_concentration: none,
  advisors: (),
  volume_number: none,
  location: "Local",
  year: "Ano",
  custom_nature: none,
) = {
  not_count_next_page()
  page()[
    #set align(center)
    #set text(
      size: font_size_for_secondary_information,
    )

    // Authors
    #text(
      font: font_family_sans,
    )[
      #print_authors(
        authors: authors,
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
    #let is_first = true
    #for advisor in advisors {
      text()[
        #if is_first [
          Orientador#get_gender_ending(advisor.gender, masculine_ends_with_vowel: false):
        ] else [
          Coorientador#get_gender_ending(advisor.gender, masculine_ends_with_vowel: false):
        ]
        #advisor.prefix
        #advisor.name
        #parbreak()
      ]
      is_first = false
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
