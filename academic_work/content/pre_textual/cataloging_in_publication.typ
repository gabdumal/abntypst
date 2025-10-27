// # Cataloging-in-publication. Ficha catalográfica.
// NBR 14724:2024 4.2.1.1.2

#import "../../data/main.typ": (
  address, advisors, authors, degree, institution, organization, program, subtitle, title, type_of_work, volume_number,
  year,
)
#import "/template/academic_work/pages/pre_textual/cataloging_in_publication.typ": include_cataloging_in_publication
#import "/template/academic_work/pages/pre_textual/custom_cataloging_in_publication.typ": (
  include_custom_cataloging_in_publication,
)
#import "abstract.typ": abstract_in_main_language

#let keywords_in_main_language = abstract_in_main_language.keywords

// This is just an example for the cataloging in publication. When your institution provides you with the final file, you must use the command `include_custom_cataloging_in_publication`, filling it with the command `image` and with the path to the file.
// Este é apenas um exemplo para a ficha catalográfica. Quando sua instituição fornecer o arquivo final, você deve usar o comando `include_custom_cataloging_in_publication`, preenchendo-o com o comando `image` e com caminho para o arquivo.

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

// If you have a file to import, use the command below.
// Se você tem um arquivo para importar, use o comando abaixo.

// #include_custom_cataloging_in_publication(image("../../assets/documents/ficha_catalografica.svg"))
