#import "../../style.typ": font_size_for_common_text
#import "../../util/page.typ": not_number_next_page

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
  not_number_next_page()
  heading(
    numbering: none,
    outlined: false,
  )[
    #title
  ]

  align(left)[
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
}
