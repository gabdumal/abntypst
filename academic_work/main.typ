// # Academic Work. Trabalho Acadêmico.
// NBR 14724:2024

#import "./data/glossary/main.typ": abbreviations_entries, glossary_entries, symbols_entries
#import "/template/common/components/source.typ": print_source_for_content_created_by_authors
#import "/template/common/packages.typ": glossarium
#import "/template/template.typ": template

// Glossary. Glossário.
#show: glossarium.make-glossary
#glossarium.register-glossary(abbreviations_entries)
#glossarium.register-glossary(symbols_entries)
#glossarium.register-glossary(glossary_entries)

// Template. Modelo.
#show: it => template(
  it,
  page_numbering: true,
)

// External elements. Elementos externos.
#include "content/external/main.typ"

// Pre-textual elements. Elementos pré-textuais.
#include "content/pre_textual/main.typ"

// Textual elements. Elementos textuais.
#include "content/textual/main.typ"

// Post-textual elements. Elementos pós-textuais.
#include "content/post_textual/main.typ"

// Bibliography. Referências.
#bibliography(
  "data/bibliography.bib",
)
