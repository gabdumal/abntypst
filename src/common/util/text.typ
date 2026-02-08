// # Text. Texto.

#let capitalize_first_letter = text => {
  upper(text.at(0)) + text.slice(1)
}

#let capitalize_every_word = text => {
  text.split().map(word => capitalize_first_letter(word)).join(sym.space)
}
