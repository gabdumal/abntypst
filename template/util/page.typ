// # Página

#let should_number_this_page = state("should_number_this_page", true)
#let should_count_this_page = state("should_count_this_page", true)

#let not_number_page(
  body,
) = {
  should_number_this_page.update(false)
  body
  should_number_this_page.update(true)
}

#let not_count_page(
  body,
) = {
  should_count_this_page.update(false)
  body
  should_count_this_page.update(true)
}
