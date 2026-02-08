// # Institutional information. Informações institucionais.
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
    // CDC UFJF 2023 recommends to use uppercase
    #upper(organization.name)
    #if institution != none [
      #joiner
      #upper(institution.name)
    ]
    #if department != none [
      #joiner
      #upper(department.name)
    ]
    #if program != none [
      #joiner
      #upper(program.name)
    ]
  ]
}
