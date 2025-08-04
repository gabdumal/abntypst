// # Academic Work Metadata. Metadados para Trabalho Acadêmico.
// This file contains metadata for an academic work, such as a thesis or dissertation.
// For the optional fields, you can leave them empty or comment the square brackets.

// Authors — required.
// Autores — obrigatório.
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
// Orientadores — obrigatório.
#let advisors = (
  (
    first_name: [Maria],
    middle_name: [de],
    last_name: [Medeiros],
    gender: "feminine",
    prefix: [Prof.ª Dr.ª],
    organization: (
      name: [Universidade Federal de Juiz de Fora],
      gender: "feminine",
    ),
  ),
  (
    first_name: [João],
    middle_name: none,
    last_name: [Jimenez],
    gender: "masculine",
    prefix: [Prof. Dr.],
    organization: (
      name: [Universidade Federal de Juiz de Fora],
      gender: "feminine",
    ),
  ),
  (
    first_name: [Ana Paula],
    middle_name: none,
    last_name: [Andrade],
    gender: "feminine",
    prefix: [Prof.ª Dr.ª],
    organization: (
      name: [Instituto Federal de Educação, Ciência e Tecnologia do Sudeste de Minas Gerais],
      gender: "masculine",
    ),
  ),
)

// Examination committee — required.
// Banca examinadora — obrigatório.
#let examination_committee = (
  (
    first_name: [Luciano],
    middle_name: [de],
    last_name: [Lopes],
    gender: "masculine",
    prefix: [Prof. Dr.],
    organization: (
      name: [Universidade Federal de Minas Gerais],
      gender: "feminine",
    ),
  ),
  (
    first_name: [Renata],
    middle_name: none,
    last_name: [Ribeiro],
    gender: "feminine",
    prefix: [Prof.ª Dr.ª],
    organization: (
      name: [Universidade Federal de Juiz de Fora],
      gender: "feminine",
    ),
  ),
)

// Title — required.
// Título — obrigatório.
#let title = {
  [Análise de sensibilidade]
}

// Subtitle — optional.
// Subtítulo — opcional.
#let subtitle = {
  [impactos do aumento de custo de insumos em uma confeitaria]
}

// Organization — required. Usually the name of the university.
// Organização — obrigatório. Geralmente o nome da universidade.
#let organization = (
  name: [Universidade Federal de Juiz de Fora],
  gender: "feminine",
)

// Institution — optional. Usually the name of the college or faculty.
// Instituição — opcional. Geralmente o nome da faculdade ou instituto.
#let institution = (
  name: [Instituto de Ciências Exatas],
  gender: "masculine",
)

// Department — optional.
// Departamento — opcional.
#let department = (
  name: [Departamento de Ciência da Computação],
  gender: "masculine",
)

// Program — semi-optional. The name of the program or course.
// It will be used in the nature of the work as follows: "apresentado ao Bacharelado em Sistemas de Informação".
// You can leave it empty if you define a custom nature of the work.
//
// Programa — semi-opcional. O nome do programa ou curso.
// Será usado na natureza do trabalho como segue: "apresentado ao Bacharelado em Sistemas de Informação".
// Você pode deixá-lo vazio se definir uma natureza personalizada do trabalho.
#let program = {
  (
    name: [Bacharelado em Sistemas de Informação],
    // name: [Programa de Pós-Graduação em Ciência da Computação]
    gender: "masculine",
  )
}

// Type of work — required. The type of academic work, such as "trabalho de conclusão de curso", "dissertação", or "tese".
// Tipo de trabalho — obrigatório. O tipo de trabalho acadêmico, como "trabalho de conclusão de curso", "dissertação" ou "tese".
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
//
// Grau — semi-opcional. O grau que está sendo cursado, como "bacharelado", "especialização", etc.
// Remova a marcação de comentário do grau desejado entre parênteses e comente os outros.
// Você pode deixá-lo vazio se definir uma natureza personalizada do trabalho.
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
//
// Tópico do curso — obrigatório. O tópico específico sobre o qual o curso versa.
// Será usado na natureza do trabalho como segue: "título de bacharel em Sistemas de Informação".
// Você pode deixá-lo vazio se definir uma natureza personalizada do trabalho.
#let degree_topic = {
  [Sistemas de Informação]
}

// Area of concentration — optional.
// It will be used in the nature of the work as follows: "Área de concentração: Engenharia de Software".
//
// Área de concentração — opcional.
// Será usado na natureza do trabalho como segue: "Área de concentração: Engenharia de Software".
#let area_of_concentration = {
  // [Engenharia de Software]
}

// Address — required. The city where the work is being published.
// Endereço — obrigatório. A cidade onde o trabalho está sendo publicado.
#let address = {
  // If needed, add the state as in [Juiz de Fora, MG]
  // Se necessário, adicione o estado como em [Juiz de Fora, MG]
  [Juiz de Fora]
}

// Year — required. The year of publication.
// Ano — obrigatório. O ano de publicação.
#let year = {
  [2025]
}

// Volume number — optional. If the work is part of a series or collection, specify the volume number.
// Número do volume — opcional. Se o trabalho fizer parte de uma série ou coleção, especifique o número do volume.
#let volume_number = {
  // [1]
}

// Custom nature of the work — optional.
// If you want to customize the nature of the work, you can do it here.
// If you leave it empty, the default nature will be used.
//
// Natureza personalizada do trabalho — opcional.
// Se você quiser personalizar a natureza do trabalho, pode fazê-lo aqui.
// Se você deixá-la vazia, a natureza padrão será usada.
#let custom_nature = {
  // [
  //   Trabalho apresentado ao Bacharelado em Sistemas de Informação da Universidade Federal de Juiz de Fora como requisito parcial para a aprovação na disciplina de Sistemas de Apoio à Decisão.
  // ]
}

// Approval date — required.
// Data de aprovação — obrigatório.
#let approval_date = {
  (
    day: [01],
    month: [janeiro],
    year: [2025],
  )
}
