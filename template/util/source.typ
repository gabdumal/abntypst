#import "gender.typ": get_gender_ending

#let print_source_for_content_created_by_authors(
  gender: "masculine",
  plural: true,
) = {
  [Elaborado
    pel#get_gender_ending(gender, plural: plural)
    autor#get_gender_ending(gender, plural: plural, masculine_ends_with_vowel: false)]
}
