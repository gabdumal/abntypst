// # Cover. Capa.
// NBR 14724:2024 4.1.1

#import "../../data/main.typ": (
  address, authors, institution, organization, program, subtitle, title, volume_number, year,
)
#import "/template/academic_work/pages/external/cover.typ": include_cover

#include_cover(
  address: address,
  authors: authors,
  institution: institution,
  organization: organization,
  program: program,
  subtitle: subtitle,
  title: title,
  volume_number: volume_number,
  year: year,
)
