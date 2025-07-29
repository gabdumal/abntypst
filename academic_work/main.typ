#import "/template/packages.typ": init-glossary

// Data
#import "data/main.typ": (
  advisors, area_of_concentration, authors, custom_nature, degree, degree_topic, department, institution, location,
  organization, program, subtitle, title, type_of_work, volume_number, year,
)

// Style
#import "/template/style.typ": style
#show: it => style(
  it,
  page_numbering: true,
)

// Glossary
#import "data/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

// Cover
#import "/template/academic_work/pages/cover.typ": set_cover
#set_cover(
  authors: authors,
  title: title,
  subtitle: subtitle,
  location: location,
  year: year,
  volume_number: volume_number,
)

// Title page
#import "/template/academic_work/pages/title_page.typ": set_title_page
#set_title_page(
  area_of_concentration: area_of_concentration,
  degree: degree,
  organization: organization,
  institution: institution,
  department: department,
  type_of_work: type_of_work,
  authors: authors,
  title: title,
  subtitle: subtitle,
  volume_number: volume_number,
  location: location,
  year: year,
  degree_topic: degree_topic,
  program: program,
  advisors: advisors,
  custom_nature: custom_nature,
)

// Cataloging data
#import "/template/academic_work/pages/cataloging_data.typ": set_cataloging_data
#set_cataloging_data(
  authors: authors,
  title: title,
  subtitle: subtitle,
  location: location,
  year: year,
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
