// # Cataloging-in-publication. Ficha catalográfica.
// NBR 14724:2024 4.2.1.1.2

#import "../../data/main.typ": (
  address, advisors, authors, degree, institution, organization, program, subtitle, title, type_of_work, volume_number,
  year,
)
#import "/template/academic_work/pages/pre_textual/cataloging_in_publication.typ": include_cataloging_in_publication
#import "abstract.typ": abstract_in_main_language

#let keywords_in_main_language = abstract_in_main_language.keywords

#include_cataloging_in_publication(
  address: address,
  advisors: advisors,
  authors: authors,
  degree: degree,
  institution: institution,
  keywords_in_main_language: keywords_in_main_language,
  organization: organization,
  program: program,
  subtitle: subtitle,
  title: title,
  type_of_work: type_of_work,
  volume_number: volume_number,
  year: year,
)
