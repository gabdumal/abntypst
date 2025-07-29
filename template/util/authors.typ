// # Autores

#let print_author(
  author: (
    first_name: "Fulano",
    middle_name: none,
    last_name: "Fonseca",
    gender: "masculine",
  ),
  last_name_first: false,
) = {
  if last_name_first {
    author.last_name + ", "
    author.first_name
    if author.middle_name != none { " " + author.middle_name }
  } else {
    author.first_name + " "
    if author.middle_name != none { author.middle_name + " " }
    author.last_name
  }
}

#let print_authors(
  authors: (),
  joiner: ", ",
) = {
  (
    authors
      .map(author => print_author(
        author: author,
        last_name_first: false,
      ))
      .join(joiner)
  )
}
