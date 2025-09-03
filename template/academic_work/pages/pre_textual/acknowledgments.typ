// # Acknowledgments. Agradecimentos.
// NBR 14724:2024 4.2.1.6

#import "../../../common/components/heading.typ": not_start_on_new_page
#import "../../../common/util/page.typ": not_number_page

#let include_acknowledgments(
  body,
) = {
  not_number_page()[
    #not_start_on_new_page()[
      #page()[
        #heading(
          numbering: none,
          outlined: false,
        )[
          Agradecimentos
        ]
        #body
      ]
    ]
  ]
}
