// # Bibliography. Referências.
// NBR 6023:2025 6, NBR 14724:2024 4.2.3.1

#import "../style/style.typ": leading_for_bibliography, spacing_for_bibliography

#let format_bibliography(body) = {
  set par(leading: leading_for_bibliography, spacing: spacing_for_bibliography)
  body
}
