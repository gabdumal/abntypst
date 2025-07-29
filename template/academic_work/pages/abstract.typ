#import "../../style.typ": font_size_for_common_text
#import "../../util/heading.typ": not_start_on_new_page
#import "../../util/page.typ": not_number_page

#let include_abstract(
  keywords_title: { "Palavras-chave" },
  keywords: {
    (
      "primeira palavra-chave",
      "segunda palavra-chave",
      "terceira palavra-chave",
    )
  },
  title: { "Resumo" },
  content: { "Conteúdo do resumo." },
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        #heading(
          numbering: none,
          outlined: false,
        )[
          #title
        ]

        #align(left)[
          #content

          // Following ABNTEX2
          #v(18pt)

          // NBR 6028:2021
          // Keywords are preceded by a title and colon.
          // Keywords are separated by semicolons and end with a period.
          // Keywords are not capitalized.
          #par(
            first-line-indent: 0em,
          )[
            #text(weight: "bold")[#keywords_title:]
            #keywords.join("; ").
          ]
        ]
      ]
    ]
  ]
}
