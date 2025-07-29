// # Informações institucionais

#let print_institutional_information(
  organization: (
    name: "Nome da organização",
  ),
  institution: none,
  department: none,
  program: none,
) = {
  organization.name
  parbreak()
  if institution != none {
    institution
    parbreak()
  }
  if department != none {
    department
    parbreak()
  }
  if program != none {
    program.name
    parbreak()
  }
}
