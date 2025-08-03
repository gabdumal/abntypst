#import "/template/packages.typ": glossy
#import "/template/util/source.typ": print_source_for_content_created_by_authors

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
#show: glossy.init-glossary.with(glossary_entries)

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
#include_errata()[
  Conteúdo da errata.
  #parbreak()
  #lorem(50)
]

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
#include_dedication()[
  Dedicamos este trabalho àqueles que contribuem com a organização e com o compartilhamento da informação, sobretudo àqueles que o fazem de forma livre e cooperativa.
]

// Acknowledgments
#import "/template/academic_work/pages/acknowledgments.typ": include_acknowledgments
#include_acknowledgments()[
  Agradecemos aos informáticos que construíram as ferramentas utilizadas para desenvolver este projeto, em especial aos contribuidores dos projetos
  #emph[abnTeX2] @abntex:2023:repository_abntex2,
  #emph[Typst] @typst:2025:typst, #emph[glossy] @waits:2025:glossy e #emph[subpar] @tinger:2025:subpar.
]

// Epigraph
#import "/template/academic_work/pages/epigraph.typ": include_epigraph
#include_epigraph()[
  #quote(
    attribution: [@dumont:1918:o_que_eu_vi_o_que_nos_veremos[p. 49]],
    block: true,
  )[
    Perguntar-me-á o leitor porque não o construí mais cedo, ao mesmo tempo que os meus dirigíveis.
    É que o inventor, como a natureza de Linneu, não faz saltos; progride de manso, evolui.
    Comecei por fazer-me bom piloto de balão livre e só depois ataquei o problema de sua dirigibilidade.
    Fiz-me bom aeronauta no manejo dos meus dirigíveis; durante muitos anos, estudei a fundo o motor a petróleo e só quando verifiquei que o seu estado de perfeição era bastante para fazer voar, ataquei o problema do mais pesado que o ar
  ]
]

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
