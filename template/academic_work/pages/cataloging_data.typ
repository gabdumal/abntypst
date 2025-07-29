// # Ficha catalográfica

#import "../../style.typ": font_family_sans, font_size_for_smaller_text
#import "../../util/authors.typ": print_author, print_authors
#import "../../util/page.typ": not_count_next_page
#import "../../util/title.typ": print_title

#let set_cataloging_data(
  authors: (
    (
      first_name: "Fulano",
      middle_name: none,
      last_name: "Fonseca",
      gender: "masculine",
    ),
  ),
  title: "Título do trabalho",
  subtitle: none,
  volume_number: none,
  location: "Local",
  year: "Ano",
  // organization: str,
  // program: none,
  // institution: none,
  // department: none,
  // type_of_work: none,
  // degree: none,
  // degree_topic: none,
  // area_of_concentration: none,
  // advisors: (),
  // custom_nature: none,
) = {
  not_count_next_page()
  page()[
    #set align(center + bottom)
    #set text(
      font: font_family_sans,
      size: font_size_for_smaller_text,
    )
    #set par(
      first-line-indent: 0.5cm,
    )

    #box(
      stroke: (
        thickness: auto,
      ),
      width: 13.5cm,
      height: 8cm,
      inset: 0.5em,
    )[
      #set align(start + horizon)

      #print_author(author: authors.at(0), last_name_first: true)

      #print_title(
        title: title,
        subtitle: subtitle,
        with_weight: false,
      )
      #sym.slash
      #print_authors(authors: authors)
      #sym.dash.en
      #if volume_number != none {
        "v. " + volume_number + sym.space + sym.dash.en
      }
      #location,
      #year.
    ]
  ]
}
