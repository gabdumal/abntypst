// # Capa

#import "../style.typ": font_family_sans
#import "/template/academic_work/title.typ": print_title

// Following ABNTEX2
#let font_size_for_primary_information = 20pt
#let font_size_for_secondary_information = 14pt

#let set_cover(
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
  authors.map(author => author.name).join(", ")

  v(1fr)

  // Title
  text(
    size: font_size_for_primary_information,
  )[
    #print_title(
      title: title,
      subtitle: subtitle,
      with_weight: true,
    )
  ]

  v(1fr)

  // Publishing information
  if volume_number != none [
    Volume #volume_number
    #parbreak()
  ]
  location
  parbreak()
  year

  pagebreak()
}
