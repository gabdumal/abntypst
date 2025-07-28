#import "../util/text.typ": capitalize_first_letter
#import "../util/gender.typ": get_gender_ending

#let print_nature(
  authors: (),
  organization: (
    name: str,
    gender: str,
  ),
  program: (
    name: str,
    gender: str,
  ),
  type_of_work: str,
  degree: (
    name: str,
    title: (
      masculine: str,
      feminine: str,
    ),
  ),
  degree_topic: str,
  area_of_concentration: none,
) = {
  let gender_ending_of_type_of_work = "a"
  if type_of_work == "trabalho de conclusão de curso" {
    gender_ending_of_type_of_work = "o"
  }

  let preposition_of_program = "à"
  if program.gender == "masculine" {
    preposition_of_program = "ao"
  }

  let degree_title = degree.title.feminine
  for author in authors {
    if author.gender == "masculine" {
      degree_title = degree.title.masculine
      break
    }
  }

  [
    #capitalize_first_letter(type_of_work)
    apresentad#gender_ending_of_type_of_work
    #preposition_of_program
    #program.name
    d#get_gender_ending(organization.gender)
    #organization.name
    como requisito parcial
    à obtenção do título de
    #capitalize_first_letter(degree_title) em
    #degree_topic.
    #if area_of_concentration != none [
      Área de concentração: #area_of_concentration.
    ]
  ]
}
