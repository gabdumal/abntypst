// # Approval page. Folha de aprovação.
// NBR 14724:2024 4.2.1.3

#import "../../data/main.typ": (
  address, advisors, approval_date, area_of_concentration, authors, custom_nature, degree, degree_topic,
  examination_committee, organization, program, subtitle, title, type_of_work, volume_number, year,
)
#import "/template/academic_work/pages/pre_textual/approval_page.typ": include_approval_page

#include_approval_page(
  address: address,
  advisors: advisors,
  approval_date: approval_date,
  area_of_concentration: area_of_concentration,
  authors: authors,
  custom_nature: custom_nature,
  degree_topic: degree_topic,
  degree: degree,
  examination_committee: examination_committee,
  organization: organization,
  program: program,
  subtitle: subtitle,
  title: title,
  type_of_work: type_of_work,
  volume_number: volume_number,
  year: year,
)
