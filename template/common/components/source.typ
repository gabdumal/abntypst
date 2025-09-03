// # Source. Fonte.
// NBR 14724:2024 5.8,NBR 14724:2024 5.9

#import "../util/gender.typ": get_gender_ending

#let print_source_for_content_created_by_authors(
  start_with_uppercase: false,
) = {
  [#if start_with_uppercase { "E" } else { "e" }laboração própria]
}
