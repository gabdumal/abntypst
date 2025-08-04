// # Cataloging-in-publication. Ficha catalográfica.
// NBR 14724:2024 4.2.1.1.2

#import "../../../components/advisors.typ": get_advisor_role
#import "../../../components/heading.typ": not_start_on_new_page
#import "../../../components/people.typ": print_people, print_person
#import "../../../components/title.typ": print_title
#import "../../../style.typ": font_family_sans, font_size_for_smaller_text, leading_for_smaller_text
#import "../../../util/page.typ": not_count_page, not_number_page
#import "../../../util/text.typ": capitalize_first_letter

#let include_cataloging_in_publication(
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
  advisors: {
    (
      (
        first_name: "Ciclana",
        middle_name: "de",
        last_name: "Castro",
        gender: "feminine",
      ),
    )
  },
  type_of_work: {
    (
      name: "trabalho de conclusão de curso",
      gender: "masculine",
    )
  },
  degree: {
    (
      name: "bacharelado",
      title: (
        masculine: "bacharel",
        feminine: "bacharela",
      ),
    )
  },
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
  keywords_in_main_language: {
    (
      "primeira palavra-chave",
      "segunda palavra-chave",
      "terceira palavra-chave",
    )
  },
) = {
  not_number_page()[
    #not_count_page()[
      #not_start_on_new_page()[
        #page()[
          #set align(center + bottom)
          #set text(
            font: font_family_sans,
            size: font_size_for_smaller_text,
          )
          #set par(
            first-line-indent: 0.5cm,
            leading: leading_for_smaller_text,
            spacing: leading_for_smaller_text,
          )

          #box(
            stroke: (
              thickness: auto,
            ),
            width: 13.5cm,
            height: 10cm,
            inset: 0.5em,
          )[
            #set align(start + horizon)

            #print_person(person: authors.at(0), last_name_first: true).
            #parbreak()

            #print_title(
              title: title,
              subtitle: subtitle,
              with_weight: false,
            )
            #sym.slash
            #print_people(people: authors)
            #sym.dash.en
            #if volume_number != none {
              "v. " + volume_number + sym.space + sym.dash.en
            }
            #address,
            #year.

            // TODO: Check this counter
            #context { counter(page).final().at(0) } f.
            #parbreak()#linebreak()

            #let is_first_advisor = true
            #for advisor in advisors {
              [
                #capitalize_first_letter(get_advisor_role(gender: advisor.gender, is_co_advisor: not is_first_advisor)):
                #print_person(person: advisor)
                #parbreak()
              ]
              is_first_advisor = false
            }

            #capitalize_first_letter(type_of_work.name)
            (#capitalize_first_letter(degree.name))
            #sym.dash.en
            #organization.name#if institution != none { [, #institution.name] }.
            #if program != none { [#program.name,] }
            #if volume_number != none {
              "v. " + volume_number + sym.comma
            }
            #year.
            #parbreak()#linebreak()

            #let keywords_counter = 1
            #for keyword in keywords_in_main_language {
              numbering("1. ", keywords_counter)
              [#capitalize_first_letter(keyword). ]
              keywords_counter += 1
            }
            #let notes_counter = 1
            #for advisor in advisors {
              numbering("I. ", notes_counter)
              [#print_person(person: advisor, last_name_first: true),
                #if notes_counter > 1 { "co" }orient.
              ]
              notes_counter += 1
            }
            #if institution != none {
              numbering("I. ", notes_counter)
              [#institution.name.]
              notes_counter += 1
            }
            #numbering("I. ", notes_counter)
            Título.
          ]
        ]
      ]
    ]
  ]
}
