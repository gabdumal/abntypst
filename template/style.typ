// ## Paper size — NBR 14724:2024 5.1
#let paper_size = "a4"

// ## Margins — NBR 14724:2024
// TODO: Invert start and end margins for back and front pages
// https://typst.app/docs/guides/page-setup-guide/
#let margin_top = 3.0cm
#let margin_bottom = 2.0cm
#let margin_start = 3.0cm
#let margin_end = 2.0cm

// ## Font family
#let font_family_sans = "Liberation Sans"
#let font_family_serif = "Liberation Serif"

// ## Font size — NBR 14724:2024 5.1, NBR 6022:2018 6.1
#let font_size_for_level_1_headings = 14pt
#let font_size_for_level_2_headings = 13pt
#let font_size_for_level_3_and_beyond_headings = 12pt
#let font_size_for_common_text = 12pt
// Smaller text must be used for: quotations with more than 3 lines, footnotes, page numbering, cataloging-in-publication, references and caption of figures and tables.
#let font_size_for_smaller_text = 10pt

// ## Spacing — NBR 14724:2024 5.2, NBR 6022:2018 6.1

// ### Multipliers
#let spacing_of_one = 1.0
#let spacing_of_one_and_a_half = 1.5

// ### Headings
#let spacing_for_level_1_headings = font_size_for_level_1_headings * spacing_of_one_and_a_half
#let spacing_for_level_2_headings = font_size_for_level_2_headings * spacing_of_one_and_a_half
#let spacing_for_level_3_and_beyond_headings = font_size_for_level_3_and_beyond_headings * spacing_of_one_and_a_half

// ### Common text
// Spacing of 1.5 must be used for common text.
#let spacing_for_common_text = font_size_for_common_text * spacing_of_one_and_a_half
#let spacing_for_smaller_text = font_size_for_smaller_text * spacing_of_one_and_a_half
// Spacing of 1 must be used for references.
#let spacing_for_references = font_size_for_common_text * spacing_of_one

// ## Leading — NBR 14724:2024 5.2

// ### Multipliers
#let leading_of_one = spacing_of_one / 2
#let leading_of_one_and_a_half = spacing_of_one_and_a_half / 2

// ### Text
// Leading of 1.5 must be used for common text.
#let leading_for_common_text = font_size_for_common_text * leading_of_one_and_a_half
// Leading of 1 must be used for: quotations with more than 3 lines, footnotes, nature, references and caption of figures and tables. We interpret that nature should also use this leading.
#let leading_for_smaller_text = font_size_for_smaller_text * leading_of_one
// Leading of 1 must be used for references.
#let leading_for_references = font_size_for_common_text * leading_of_one
