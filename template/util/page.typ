// # Página

#let should_number_this_page = state("should_number_this_page", true)
#let should_count_this_page = state("should_count_this_page", true)

#let not_number_page(
  content,
) = {
  should_number_this_page.update(false)
  content
  should_number_this_page.update(true)
}

#let not_count_page(
  content,
) = {
  should_count_this_page.update(false)
  content
  should_count_this_page.update(true)
}
