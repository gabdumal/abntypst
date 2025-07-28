#let print_title(
  title: str,
  subtitle: none,
  with_weight: true,
) = {
  let weight = if with_weight { "bold" } else { "regular" }
  text(
    weight: weight,
  )[
    #title#if subtitle != none [:
      #text(
        weight: "regular",
      )[
        #subtitle
      ]
    ]
  ]
}
