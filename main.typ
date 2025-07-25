#import "/template/packages.typ": init-glossary

#import "/template/style.typ": page_template
#show: page_template

// Glossary
#import "/data/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

#include "/content/main.typ"

#include "/template/bibliography.typ"
