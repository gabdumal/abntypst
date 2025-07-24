#import "/template/packages.typ": init-glossary

// Glossary
#import "/information/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

#include "/template/header.typ"

#include "/data/abstract.typ"

#include "/content/main.typ"

#include "/template/bibliography.typ"
