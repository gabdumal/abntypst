// # Title page. Folha de rosto.
// NBR 14724:2024 4.2.1.1.1

#import "../../data/main.typ": (
  address, advisors, area_of_concentration, authors, custom_nature, degree, degree_topic, organization, program,
  subtitle, title, type_of_work, volume_number, year,
)
#import "/template/academic_work/pages/pre_textual/title_page.typ": include_title_page

#include_title_page(
  address: address,
  advisors: advisors,
  area_of_concentration: area_of_concentration,
  authors: authors,
  custom_nature: custom_nature,
  degree_topic: degree_topic,
  degree: degree,
  organization: organization,
  program: program,
  subtitle: subtitle,
  title: title,
  type_of_work: type_of_work,
  volume_number: volume_number,
  year: year,
)
