// Equation. Equação.
// NBR 14724:2024 5.7

#import "../style/style.typ": font_family_math_text

#let equation(
  width: auto,
  body,
) = {
  set text(
    font: font_family_math_text,
  )
  set math.equation(numbering: "(1.1)")

  align(
    center,
    block(
      width: width,
      align(
        start,
        body,
      ),
    ),
  )
}
