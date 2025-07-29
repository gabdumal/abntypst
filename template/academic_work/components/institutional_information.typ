// # Informações institucionais

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
) = {
  organization.name
  parbreak()
  if institution != none {
    institution.name
    parbreak()
  }
  if department != none {
    department.name
    parbreak()
  }
  if program != none {
    program.name
    parbreak()
  }
}
