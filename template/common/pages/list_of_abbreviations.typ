// # Abbreviations. Lista de abreviaturas e siglas.
// NBR 14724:2024 4.2.1.11

#import "/template/common/pages/glossary.typ": include_glossary

#let include_list_of_abbreviations(
  abbreviations_entries,
) = {
  include_glossary(
    title: "Lista de abreviaturas e siglas",
    abbreviations_entries,
  )
}
