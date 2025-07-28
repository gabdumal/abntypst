#import "../style.typ": font_family_sans

#let font_size_for_primary_information = 18pt
#let font_size_for_secondary_information = 14pt
#let font_size_for_tertiary_information = 12pt

#let set_cover(
  organization: str,
  institution: none,
  department: none,
  course: none,
  authors: array,
  title: str,
  subtitle: none,
  volume_number: none,
  location: str,
  year: str,
) = {
  set align(center)
  set text(
    font: font_family_sans,
    size: font_size_for_secondary_information,
  )

  // Institutional information
  place(center + top)[
    #organization
    #parbreak()
    #if institution != none {
      institution
      parbreak()
    }
    #if department != none {
      department
      parbreak()
    }
  ]

  // Authors
  place(
    center + top,
    dy: 29.7cm / 5,
  )[
    #text(weight: "bold")[
      #authors.join(", ")
    ]
  ]

  // Title
  place(center + horizon)[
    #text(
      size: font_size_for_primary_information,
      weight: "bold",
    )[
      #title#if subtitle != none [:
        #text(
          weight: "regular",
        )[
          #subtitle
        ]
      ]
    ]
  ]

  // Publishing information
  place(center + bottom)[
    #set text(
      font_size_for_tertiary_information,
    )
    #if volume_number != none [
      Volume #volume_number
      #parbreak()
    ]
    #location
    #parbreak()
    #year
  ]

  pagebreak()
}
