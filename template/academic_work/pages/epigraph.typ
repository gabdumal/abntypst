// # Epígrafe

#import "../../util/heading.typ": not_start_on_new_page
#import "../../util/page.typ": not_number_page

// NBR 14724:2024 4.2.1.6, NBR 14724:2024 5.2.4
#let include_epigraph(
  content: {
    [
      Conteúdo da epígrafe.
      #parbreak()
      #lorem(50)
    ]
  },
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        // Epigraph should not have title or numbering.
        // Epigraph should start from the middle of the page to the right, and aligned to the bottom.
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
