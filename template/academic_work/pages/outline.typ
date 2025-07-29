// # Sumário

#import "../../style.typ": font_family_sans
#import "../../util/page.typ": not_number_next_page, not_number_page
#import "../../util/heading.typ": get_styling_for_heading

#let include_outline() = {
  set text(
    font: font_family_sans,
  )
  not_number_page()[
    #page()[
      #show outline.entry: it => {
        let (
          font_size,
          space_around,
          font_weight,
          text_style,
        ) = get_styling_for_heading(it)
        set text(
          font: font_family_sans,
          size: font_size,
          weight: font_weight,
          style: text_style,
        )
        let prefix = it.prefix()
        block(
          below: space_around,
        )[
          #link(it.element.location(), it.indented(prefix, it.inner()))
        ]
      }

      #outline(
        depth: 5,
        indent: 0em,
      )
    ]
  ]
}
