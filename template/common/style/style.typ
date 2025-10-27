// # Style. Estilo.

// ## Paper size. Tamanho do papel.
// NBR 14724:2024 5.1
#let paper_size = "a4"

// ## Margins. Margens.
// NBR 14724:2024 5.1
#let margin_top = 3.0cm
#let margin_bottom = 2.0cm
#let margin_start = 3.0cm
#let margin_end = 2.0cm

// ## Font family. Família tipográfica.
#let font_family_sans = "Liberation Sans"
#let font_family_serif = "Liberation Serif"
#let font_family_mono = "Liberation Mono"
#let font_family_math = "New Computer Modern Math"

// ## Font size. Tamanho da fonte.
// NBR 14724:2024 5.1, NBR 6022:2018 6.1
#let font_size_for_level_1_headings = 14pt
#let font_size_for_level_2_headings = 13pt
#let font_size_for_level_3_and_beyond_headings = 12pt
#let font_size_for_common_text = 12pt
// Smaller text must be used for: quotations with more than 3 lines, footnotes, page numbering, cataloging-in-publication, references and caption of figures and tables.
#let font_size_for_smaller_text = 10pt

// ## Spacing. Espaçamento.
// NBR 14724:2024 5.2, NBR 6022:2018 6.1

// ### Multipliers. Multiplicadores.
#let spacing_of_one = 1.0
#let spacing_of_one_and_a_half = 1.5

// ### Headings. Títulos.
#let spacing_for_level_1_headings = font_size_for_level_1_headings * spacing_of_one_and_a_half
#let spacing_for_level_2_headings = font_size_for_level_2_headings * spacing_of_one_and_a_half
#let spacing_for_level_3_and_beyond_headings = font_size_for_level_3_and_beyond_headings * spacing_of_one_and_a_half

// ### Common text. Texto comum.
//
// Spacing of 1.5 must be used for common text.
#let spacing_for_common_text = font_size_for_common_text * spacing_of_one_and_a_half
#let spacing_for_smaller_text = font_size_for_smaller_text * spacing_of_one_and_a_half
//
// Spacing of 1 must be used for bibliography. NBR 6023:2025 6.3.
#let spacing_for_bibliography = font_size_for_common_text * spacing_of_one
// Spacing of 1 must be used for: quotations with more than 3 lines, footnotes, nature, references and caption of figures and tables. We interpret that nature should also use this leading.
#let simple_spacing_for_smaller_text = font_size_for_smaller_text * spacing_of_one

// ## Leading. Entrelinha.
// NBR 14724:2024 5.2

// ### Multipliers. Multiplicadores.
#let leading_of_one = spacing_of_one / 2
#let leading_of_one_and_a_half = spacing_of_one_and_a_half / 2

// ### Headings. Títulos.
#let leading_for_level_1_headings = font_size_for_level_1_headings * leading_of_one_and_a_half
#let leading_for_level_2_headings = font_size_for_level_2_headings * leading_of_one_and_a_half
#let leading_for_level_3_and_beyond_headings = font_size_for_level_3_and_beyond_headings * leading_of_one_and_a_half

// ### Text. Texto.
// Leading of 1.5 must be used for common text.
#let leading_for_common_text = font_size_for_common_text * leading_of_one_and_a_half
//
// Leading of 1 must be used for bibliography. NBR 6023:2025 6.3.
#let leading_for_bibliography = font_size_for_common_text * leading_of_one
// Leading of 1 must be used for: quotations with more than 3 lines, footnotes, nature, references and caption of figures and tables. We interpret that nature should also use this leading.
#let simple_leading_for_smaller_text = font_size_for_smaller_text * leading_of_one
