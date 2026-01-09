// Note. Nota.

#import "../packages.typ": drafting
#import "../style/style.typ": font_family_sans

#let color_of_stroke_of_notes = oklch(80.78%, 0, 0deg)
#let thickness_of_stroke_of_notes = 0.125em

#let inline_note = drafting.inline-note
#let margin_note = drafting.margin-note

#let box_of_note(
  color_of_stroke: none,
  fill: none,
  width: auto,
  it,
) = {
  set text(
    font: font_family_sans,
  )
  block(
    clip: true,
    fill: fill,
    inset: 0.5em,
    radius: 0.5em,
    stroke: stroke(
      paint: color_of_stroke.paint,
      thickness: thickness_of_stroke_of_notes,
    ),
    width: width,
    it,
  )
}

#let set_default_notes = {
  drafting.set-margin-note-defaults(
    fill: color.white,
    rect: (
      fill: none,
      stroke: none,
      width: auto,
      it,
    ) => box_of_note(
      fill: fill,
      color_of_stroke: stroke,
      width: width,
      it,
    ),
    stroke: stroke(
      paint: color_of_stroke_of_notes,
    ),
  )
}

#let display_prefix = (
  fill: none,
  it,
) => {
  let space = 0.44em
  box(
    inset: (
      right: space,
    ),
    box(
      fill: fill,
      outset: space,
      text(
        weight: "bold",
        it,
      ),
    ),
  )
}

#let note_with_prefix = (
  color: none,
  prefix: none,
  it,
) => {
  drafting.set-margin-note-defaults(
    fill: color.desaturate(80%),
    rect: (
      fill: none,
      stroke: none,
      width: auto,
      it,
    ) => box_of_note(
      fill: fill,
      color_of_stroke: stroke,
      width: width,
      {
        display_prefix(
          fill: color,
          prefix,
        )
        sym.space
        it
      },
    ),
  )
  it
  set_default_notes
}

#let todo_note = it => note_with_prefix(
  color: oklch(90%, 0.16, 63deg),
  prefix: "TODO",
  it,
)

#let progress_note = it => note_with_prefix(
  color: oklch(86.15%, 0.191, 123.56deg),
  prefix: "PROG",
  it,
)

#let done_note = it => note_with_prefix(
  color: oklch(74.73%, 0.136, 248.74deg),
  prefix: "DONE",
  it,
)

#let note_from_person = (
  author: "author",
  color: none,
  margin: false,
  it,
) => {
  let stroke = stroke(
    paint: color,
  )
  let content = {
    text(
      weight: "bold",
      [#author: ],
    )
    it
  }
  if margin == true {
    margin_note(
      stroke: stroke,
      content,
    )
  } else {
    inline_note(
      stroke: stroke,
      content,
    )
  }
}
