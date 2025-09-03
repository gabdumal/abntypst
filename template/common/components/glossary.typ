// # Glossary. Glossário.
// NBR 14724:2024 4.2.1.11, 4.2.1.12, 4.2.3.2

#import "../packages.typ": glossarium
#import "../style/style.typ": font_family_sans
#import "../components/page.typ": not_number_page
#import "./heading.typ": not_start_on_new_page

#let glossary(
  title: "Glossário",
  entries,
) = {
  set text(
    font: font_family_sans,
  )
  set heading(
    numbering: none,
    outlined: false,
  )
  heading(level: 1, title)
  glossarium.print-glossary(
    entries,
    deduplicate-back-references: true,
    description-separator: ". ",
  )
}
