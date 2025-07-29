// # Página

#let page_counter = state("counted_page", 1)
#let should_count_this_page = state("should_count_this_page", true)

#let update_counted_page() = {
  page_counter.update(n => n + 1)
  should_count_this_page.update(true)
}

#let not_count_next_page() = {
  page_counter.update(n => n - 1)
  should_count_this_page.update(false)
}
