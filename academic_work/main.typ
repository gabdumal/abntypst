#import "/template/packages.typ": init-glossary

// Data
#import "data/main.typ": (
  advisors, approval_date, area_of_concentration, authors, custom_nature, degree, degree_topic, department,
  examination_committee, institution, location, organization, program, subtitle, title, type_of_work, volume_number,
  year,
)
#import "data/abstract.typ": abstracts

// Style
#import "/template/template.typ": template
#show: it => template(
  it,
  page_numbering: true,
)

// Glossary
#import "data/glossary.typ": glossary_entries
#show: init-glossary.with(glossary_entries)

// Cover
#import "/template/academic_work/pages/cover.typ": include_cover
#include_cover(
  organization: organization,
  institution: institution,
  program: program,
  authors: authors,
  title: title,
  subtitle: subtitle,
  location: location,
  year: year,
  volume_number: volume_number,
)

// Title page
#import "/template/academic_work/pages/title_page.typ": include_title_page
#include_title_page(
  authors: authors,
  title: title,
  subtitle: subtitle,
  volume_number: volume_number,
  organization: organization,
  program: program,
  type_of_work: type_of_work,
  degree: degree,
  degree_topic: degree_topic,
  area_of_concentration: area_of_concentration,
  advisors: advisors,
  location: location,
  year: year,
  custom_nature: custom_nature,
)

// Cataloging data
#import "/template/academic_work/pages/cataloging_in_publication.typ": include_cataloging_in_publication
#let keywords_in_main_language = abstracts.at(0).keywords
#include_cataloging_in_publication(
  authors: authors,
  title: title,
  subtitle: subtitle,
  volume_number: volume_number,
  location: location,
  year: year,
  advisors: advisors,
  type_of_work: type_of_work,
  degree: degree,
  organization: organization,
  institution: institution,
  program: program,
  keywords_in_main_language: keywords_in_main_language,
)

// Errata
#import "/template/academic_work/pages/errata.typ": include_errata
#include_errata()

// Approval page
#import "/template/academic_work/pages/approval_page.typ": include_approval_page
#include_approval_page(
  authors: authors,
  title: title,
  subtitle: subtitle,
  volume_number: volume_number,
  organization: organization,
  program: program,
  type_of_work: type_of_work,
  degree: degree,
  degree_topic: degree_topic,
  area_of_concentration: area_of_concentration,
  advisors: advisors,
  examination_committee: examination_committee,
  location: location,
  year: year,
  custom_nature: custom_nature,
  approval_date: approval_date,
)

// Dedication
#import "/template/academic_work/pages/dedication.typ": include_dedication
#include_dedication()

// Abstract
#include "content/abstract.typ"

// Outline
#import "/template/academic_work/pages/outline.typ": include_outline
#include_outline()

// Content
#pagebreak(weak: true)
#include "content/main.typ"

// Bibliography
#import "/template/bibliography.typ": set_bibliography
#bibliography(
  "data/bibliography.bib",
  style: "associacao-brasileira-de-normas-tecnicas",
  title: "Referências",
)
