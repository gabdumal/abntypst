#import "/template/packages.typ": init-glossary

// Data
#import "data/main.typ": (
  authors, course, department, institution, location, organization, subtitle, title, volume_number, year,
)

// Style
#import "/template/style.typ": style
#show: style

// Glossary
#import "data/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

// Cover
#import "/template/academic_work/cover.typ": set_cover
#set_cover(
  authors: authors,
  title: title,
  subtitle: subtitle,
  organization: organization,
  institution: institution,
  department: department,
  course: course,
  location: location,
  year: year,
  volume_number: volume_number,
)

// Content
#include "content/main.typ"

// Bibliography
#import "/template/bibliography.typ": set_bibliography
#bibliography(
  "data/bibliography.bib",
  style: "associacao-brasileira-de-normas-tecnicas",
  title: "Referências",
)
