// # Approval page. Folha de aprovação.
// NBR 14724:2024 4.2.1.3, NBR 14724:2024 5.2.4

#import "../../../common/components/advisors.typ": get_advisor_role
#import "../../../common/components/heading.typ": not_start_on_new_page
#import "../../../common/components/people.typ": print_people, print_person
#import "../../../common/components/title.typ": print_title
#import "../../../common/style/style.typ": (
  font_family_sans, font_size_for_smaller_text, leading_for_smaller_text, spacing_for_smaller_text,
)
#import "../../../common/util/gender.typ": get_gender_ending
#import "../../../common/util/page.typ": not_number_page
#import "../../components/examiner.typ": print_examiner
#import "../../components/institutional_information.typ": print_institutional_information
#import "../../components/nature.typ": print_nature

#let include_approval_page(
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
  type_of_work: {
    (
      name: "trabalho de conclusão de curso",
      gender: "masculine",
    )
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
        organization: (
          name: "Nome da organização",
          gender: "feminine",
        ),
      ),
    )
  },
  examination_committee: {
    (
      (
        first_name: "Beltrano",
        middle_name: none,
        last_name: "Borges",
        gender: "masculine",
        prefix: {
          "Prof. Dr."
        },
        organization: (
          name: "Nome da organização",
          gender: "feminine",
        ),
      ),
    )
  },
  address: { "Local" },
  year: { "Ano" },
  custom_nature: {
    "Natureza do trabalho."
  },
  approval_date: {
    (
      day: [dia],
      month: [mês por extenso],
      year: [ano],
    )
  },
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        // Approval page should not have title or numbering.
        #set align(center)
        #set text(
          font: font_family_sans,
        )

        // Authors
        #print_people(
          people: authors,
        )

        #v(0.25fr)

        // Title
        #print_title(
          title: title,
          subtitle: subtitle,
          with_weight: true,
        )

        #if volume_number != none [
          Volume #volume_number
          #parbreak()
        ]

        #v(0.25fr)

        #align(end)[
          #box(width: 50%)[
            #set align(start)
            #set text(
              size: font_size_for_smaller_text,
            )
            #set par(
              leading: leading_for_smaller_text,
              spacing: spacing_for_smaller_text,
            )
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

        #v(0.25fr)

        #align(start)[
          Aprovad#get_gender_ending(type_of_work.gender) em
          #approval_date.day
          de #approval_date.month
          de #approval_date.year
        ]

        #v(0.25fr)

        // Examination committee
        #text(weight: "bold")[
          Banca examinadora
        ]

        #let is_first_advisor = true
        #for advisor in advisors {
          print_examiner(examiner: advisor, role: get_advisor_role(
            gender: advisor.gender,
            is_co_advisor: not is_first_advisor,
          ))
          is_first_advisor = false
        }
        #for examiner in examination_committee {
          print_examiner(
            examiner: examiner,
            role: none,
          )
        }
      ]
    ]
  ]
}
