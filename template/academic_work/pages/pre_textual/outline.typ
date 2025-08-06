// # Outline. Sumário.
// NBR 6027:2012, NBR 14724:2024 4.2.1.13

#import "../../../components/heading.typ": not_start_on_new_page
#import "../../../components/heading.typ": get_styling_for_heading
#import "../../../style/style.typ": font_family_sans
#import "../../../util/page.typ": not_count_page, not_number_page

#let include_outline() = {
  set text(
    font: font_family_sans,
  )
  not_number_page()[
    #not_start_on_new_page()[
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
  ]
}
