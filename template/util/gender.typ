// # Gênero

#let get_gender_ending(
  gender,
  masculine_ends_with_vowel: true,
) = {
  if gender == "masculine" {
    if masculine_ends_with_vowel {
      "o"
    } else {
      ""
    }
  } else if gender == "feminine" {
    "a"
  }
}
