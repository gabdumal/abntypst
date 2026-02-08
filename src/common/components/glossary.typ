// # Glossary. Glossário.
// NBR 14724:2024 4.2.1.11, 4.2.1.12, 4.2.3.2

#import "../packages.typ": glossarium
#import "../style/style.typ": font_family_sans

#let glossary(
  disable_back_references: false,
  invisible: false,
  print_description: none,
  print_title: none,
  title: "Glossário",
  entries,
) = {
  let arguments = (
    deduplicate-back-references: true,
    description-separator: ". ",
    disable-back-references: disable_back_references,
    invisible: invisible,
  )

  let print_glossary = if print_title != none {
    if print_description != none {
      () => glossarium.print-glossary(
        ..arguments,
        user-print-description: print_description,
        user-print-title: print_title,
        entries,
      )
    } else {
      () => glossarium.print-glossary(
        ..arguments,
        user-print-title: print_title,
        entries,
      )
    }
  } else if print_description != none {
    () => glossarium.print-glossary(
      ..arguments,
      user-print-description: print_description,
      entries,
    )
  } else {
    () => glossarium.print-glossary(
      ..arguments,
      entries,
    )
  }

  if invisible == false {
    set text(
      font: font_family_sans,
    )
    set heading(
      numbering: none,
      outlined: false,
    )
    heading(level: 1, title)
    print_glossary()
  } else {
    print_glossary()
  }
}
