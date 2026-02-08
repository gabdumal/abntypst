// # Information footer. Rodapé de informação.

#import "./source.typ": print_source_for_content_created_by_authors

#let information_footer(
  note: none,
  source: none,
) = [
  // Figures must have a source
  Fonte:
  #if source == none {
    [#print_source_for_content_created_by_authors().]
  } else {
    source
  }
  #linebreak()
  #if note != none {
    if type(note) == array {
      for (index, item) in note.enumerate() {
        [Nota #(index + 1): #item]
        linebreak()
      }
    } else {
      [Nota: #note]
    }
  }
]
