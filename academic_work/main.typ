// # Academic Work. Trabalho Acadêmico.
// NBR 14724:2024

#import "/template/packages.typ": glossy
#import "/template/template.typ": template
#import "/template/components/source.typ": print_source_for_content_created_by_authors
#import "data/glossary.typ": glossary_entries

// Template. Modelo.
#show: it => template(
  it,
  page_numbering: true,
)

// Glossary. Glossário.
#show: glossy.init-glossary.with(glossary_entries)

// External elements. Elementos externos.
#include "content/external/main.typ"

// Pre-textual elements. Elementos pré-textuais.
#include "content/pre_textual/main.typ"

// Textual elements. Elementos textuais.
#include "content/textual/main.typ"

// Bibliography. Referências.
#bibliography(
  "data/bibliography.bib",
)
