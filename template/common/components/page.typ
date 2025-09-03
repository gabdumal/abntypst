// # Page. Página.

#import "../style/style.typ": font_family_serif, font_size_for_smaller_text

#let should_number_this_page = state("should_number_this_page", true)
#let should_count_this_page = state("should_count_this_page", true)

#let counting_strategy = state("counting_strategy", "only_odd_pages")

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

#let format_header(number_pages) = context {
  // Regress page counter if this page should not be counted
  let actual_page_number = here().page()
  let page_number_to_display = counter(page).get().at(0)

  if should_count_this_page.get() == false {
    counter(page).update(n => calc.max(n - 1, 0))
    page_number_to_display += -1
  }

  // NBR 14724:2024 5.3
  // Numbering should be on the right for odd pages and on the left for even pages.
  let current_counting_strategy = counting_strategy.get()
  let alignment = if current_counting_strategy == "only_odd_pages" { end } else {
    if calc.rem(actual_page_number, 2) == 1 {
      end
    } else {
      start
    }
  }

  if number_pages {
    // Display page number in the header
    if should_number_this_page.get() {
      align(alignment)[
        #text(
          font: font_family_serif,
          size: font_size_for_smaller_text,
        )[
          #page_number_to_display
        ]
      ]
    }
  }
}
