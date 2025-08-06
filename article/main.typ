#import "/template/packages.typ": init-glossary
#import "/template/bibliography.typ": set_bibliography

#import "/template/style/style.typ": page_template
#show: page_template

// Glossary
#import "data/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

#include "content/main.typ"

// Bibliography
#bibliography(
  "data/bibliography.bib",
  style: "associacao-brasileira-de-normas-tecnicas",
  title: "Referências",
)
