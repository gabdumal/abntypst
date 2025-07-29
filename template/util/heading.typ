// # Títulos

#import "../style.typ": (
  font_size_for_common_text, font_size_for_level_1_headings, font_size_for_level_2_headings,
  font_size_for_level_3_and_beyond_headings, spacing_for_level_1_headings, spacing_for_level_2_headings,
  spacing_for_level_3_and_beyond_headings,
)

#let get_styling_for_heading(it) = {
  let font_size = font_size_for_common_text
  let spacing_around = spacing_for_level_3_and_beyond_headings
  let font_weight = "bold"
  let text_style = "normal"

  if it.level == 1 {
    font_size = font_size_for_level_1_headings
    spacing_around = spacing_for_level_1_headings
  } else if it.level == 2 {
    font_size = font_size_for_level_2_headings
    spacing_around = spacing_for_level_2_headings
  } else if it.level == 3 {
    font_size = font_size_for_level_3_and_beyond_headings
  } else if it.level == 4 {
    font_weight = "regular"
  } else if it.level == 5 {
    font_weight = "regular"
    text_style = "italic"
  }

  return (font_size, spacing_around, font_weight, text_style)
}
