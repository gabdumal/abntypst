// # Dedicatória

#import "../../util/heading.typ": not_start_on_new_page
#import "../../util/page.typ": not_number_page

// NBR 14724:2024 4.2.1.4, NBR 14724:2024 5.2.4
#let include_dedication(
  content: {
    [
      Conteúdo da dedicatória.
      #parbreak()
      #lorem(50)
    ]
  },
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        // Dedication should not have title or numbering.
        // Dedication should start from the middle of the page to the right, and aligned to the bottom.
        #align(end + bottom)[
          #box(width: 50%)[
            #set align(start)
            #content
          ]
        ]
      ]
    ]
  ]
}
