// # Symbols. Lista de símbolos.
// NBR 14724:2024 4.2.1.12

#import "/template/common/pages/glossary.typ": include_glossary

#let include_list_of_symbols(
  symbols_entries,
) = {
  include_glossary(
    title: "Lista de símbolos",
    symbols_entries,
  )
}
