// # Abbreviations. Lista de abreviaturas e siglas.
// NBR 14724:2024 4.2.1.11

#import "/template/common/pages/glossary.typ": include_glossary

#let print_title = entry => {
  (
    box(
      width: 3cm,
      strong(entry.short),
    )
      + entry.long
  )
}
#let print_description = entry => {}

#let include_list_of_abbreviations(
  abbreviations_entries,
) = {
  include_glossary(
    disable_back_references: true,
    print_title: print_title,
    print_description: print_description,
    title: "Lista de abreviaturas e siglas",
    abbreviations_entries,
  )
}
