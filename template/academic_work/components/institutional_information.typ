// # Informações institucionais

// NBR 14724:2024 4.2.1.3
#let print_institutional_information(
  organization: {
    (
      name: "Nome da organização",
      gender: "masculine",
    )
  },
  institution: {
    // (
    //   name: "Nome da instituição",
    //   gender: "masculine",
    // )
  },
  department: {
    // (
    //   name: "Nome do departamento",
    //   gender: "masculine",
    // )
  },
  program: {
    // (
    //   name: "Nome do programa",
    //   gender: "masculine",
    // )
  },
  joiner: {
    linebreak()
  },
) = {
  [
    #organization.name
    #if institution != none [
      #joiner
      #institution.name
    ]
    #if department != none [
      #joiner
      #department.name
    ]
    #if program != none [
      #joiner
      #program.name
    ]
  ]
}
