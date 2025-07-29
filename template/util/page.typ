// # Página

#let page_counter = state("page_counter", 0)
#let should_number_this_page = state("should_number_this_page", true)

#let step_page_counter() = {
  page_counter.update(n => n + 1)
  // should_number_this_page.update(true)
}

#let not_number_next_page(
  should_count: true,
) = {
  if should_count {} else {
    page_counter.update(n => n - 1)
  }
  should_number_this_page.update(false)
}

#let not_number_page(
  should_count: true,
  content,
) = {
  if should_count {} else {
    page_counter.update(n => n - 1)
  }
  should_number_this_page.update(false)
  [
    #content
  ]
}


#let get_current_page_number() = {
  page_counter.get() + 1
}
