// # Source. Fonte.
// NBR 14724:2024 5.8,NBR 14724:2024 5.9

#import "../util/gender.typ": get_gender_ending

#let print_source_for_content_created_by_authors(
  start_with_uppercase: false,
  gender: "masculine",
  plural: true,
) = {
  [#if start_with_uppercase { "E" } else { "e" }laborado
    pel#get_gender_ending(gender, plural: plural)
    autor#get_gender_ending(gender, plural: plural, masculine_ends_with_vowel: false)]
}
