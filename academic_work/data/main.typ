// # Academic Work Metadata
// This file contains metadata for an academic work, such as a thesis or dissertation.
// For the optional fields, you can leave them empty or comment the square brackets.

// Authors — required.
#let authors = (
  (
    first_name: [Alice],
    middle_name: [Medeiros de],
    last_name: [Almeida],
    gender: "feminine",
  ),
  (
    first_name: [Bruno],
    middle_name: [da Silva],
    last_name: [Barbosa],
    gender: "masculine",
  ),
)

// Advisors — required.
#let advisors = (
  (
    first_name: [Maria],
    middle_name: [de],
    last_name: [Medeiros],
    gender: "feminine",
    prefix: [Prof.ª Dr.ª],
  ),
  (
    first_name: [João],
    middle_name: none,
    last_name: [Jimenez],
    gender: "masculine",
    prefix: [Prof. Dr.],
  ),
  (
    first_name: [Ana Paula],
    middle_name: none,
    last_name: [Andrade],
    gender: "feminine",
    prefix: [Prof.ª Dr.ª],
  ),
)

// Title — required.
#let title = {
  [Análise de sensibilidade]
}

// Subtitle — optional.
#let subtitle = {
  [impactos do aumento de custo de insumos em uma confeitaria]
}

// Organization — required. Usually the name of the university.
#let organization = (
  name: [Universidade Federal de Juiz de Fora],
  gender: "feminine",
)

// Institution — optional. Usually the name of the college or faculty.
#let institution = (
  name: [Instituto de Ciências Exatas],
  gender: "masculine",
)

// Department — optional. Usually the name of the department or school.
#let department = (
  name: [Departamento de Ciência da Computação],
  gender: "masculine",
)

// Program — semi-optional. The name of the program or course.
// It will be used in the nature of the work as follows: "apresentado ao Bacharelado em Sistemas de Informação".
// You can leave it empty if you define a custom nature of the work.
#let program = {
  (
    name: [Bacharelado em Sistemas de Informação],
    // name: [Programa de Pós-Graduação em Ciência da Computação]
    gender: "masculine",
  )
}

// Type of work — semi-optional. The type of academic work, such as "trabalho de conclusão de curso", "dissertação", or "tese".
// You can leave it empty if you define a custom nature of the work.
#let type_of_work = {
  (
    name: "trabalho de conclusão de curso",
    gender: "masculine",
  )
  //   (
  //     name: "dissertação",
  //     gender: "feminine",
  //   )
  //   (
  //     name: "tese",
  //     gender: "feminine",
  //   )
}

// Degree — semi-optional. The degree being pursued, such as "bacharelado", "especialização", etc.
// Uncomment the desired degree around parentheses and comment the others.
// You can leave it empty if you define a custom nature of the work.
#let degree = (
  // Bacharelado
  (
    name: "bacharelado",
    title: (
      masculine: "bacharel",
      feminine: "bacharela",
    ),
  )
  // Especialização
  // (
  //   name: "especialização",
  //   title: (
  //     masculine: "especialista",
  //     feminine: "especialista",
  //   ),
  // )
  // Licenciatura
  // (
  //   name: "licenciatura",
  //   title: (
  //     masculine: "licenciado",
  //     feminine: "licenciada",
  //   ),
  // )
  // Mestrado
  // (
  //   name: "mestrado",
  //   title: (
  //     masculine: "mestre",
  //     feminine: "mestra",
  //   ),
  // )
  // Doutorado
  // (
  //   name: "doutorado",
  //   title: (
  //     masculine: "doutor",
  //     feminine: "doutora",
  //   ),
  // )
)

// Degree topic — required. The specific topic of which the degree is about.
// It will be used in the nature of the work as follows: "título de bacharel em Sistemas de Informação".
// You can leave it empty if you define a custom nature of the work.
#let degree_topic = {
  [Sistemas de Informação]
}

// Area of concentration — optional.
// It will be used in the nature of the work as follows: "Área de concentração: Engenharia de Software".
#let area_of_concentration = {
  // [Engenharia de Software]
}

// Location — required. The city where the work is being published.
#let location = {
  // If needed, add the state as in [Juiz de Fora, MG]
  [Juiz de Fora]
}

// Year — required. The year of publication.
#let year = {
  [2025]
}

// Volume number — optional. If the work is part of a series or collection, specify the volume number.
#let volume_number = {
  // [1]
}

// Custom nature of the work — optional.
// If you want to customize the nature of the work, you can do it here.
// If you leave it empty, the default nature will be used.
#let custom_nature = {
  // [
  //   Trabalho apresentado ao Bacharelado em Sistemas de Informação da Universidade Federal de Juiz de Fora como requisito parcial para a aprovação na disciplina de Sistemas de Apoio à Decisão.
  // ]
}
