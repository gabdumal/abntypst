#import "style.typ": (
  font_size_for_authors, font_size_for_emails, font_size_for_institutions, font_size_for_title, mono_font_family,
  spacing_after_header_elements,
)
#import "/information/data.typ": authors, custom_emails, institutions, title

#let define_header(
  title: str,
  authors: array,
  institutions: array,
  custom_emails: none,
) = {
  place(top + center, scope: "parent", float: true, block([
    // Title
    #block(
      below: spacing_after_header_elements,
    )[
      #text(
        font_size_for_title,
        weight: "bold",
        title,
      )
    ]

    // Authors
    #block(
      below: spacing_after_header_elements,
    )[
      #text(
        size: font_size_for_authors,
        weight: "bold",
      )[
        #authors.map(it => [#it.name#super[#it.institution]]).join(", ")
        #linebreak()
      ]
    ]

    // Institutions
    #block(
      below: spacing_after_header_elements,
    )[
      #text(
        size: font_size_for_institutions,
      )[
        #let index = 1
        #for value in institutions {
          [
            #super[#index]#value
          ]
          index += 1
        }
      ]
    ]

    // Emails
    #block(
      below: spacing_after_header_elements,
    )[
      #text(
        size: font_size_for_emails,
        font: mono_font_family,
      )[
        #if (custom_emails != none) {
          custom_emails
        } else {
          authors.map(it => [#it.email]).join(", ")
        }
      ]
    ]

  ]))
}

#define_header(
  title: title,
  authors: authors,
  institutions: institutions,
  custom_emails: custom_emails,
)
