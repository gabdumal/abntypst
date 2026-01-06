// Note. Nota.

#import "/template/common/components/note.typ": note_from_person

#let note_from_alice = (margin: false, it) => note_from_person(
  author: "Alice",
  color: oklch(75.97%, 0.143, 21deg),
  margin: margin,
  it,
)
