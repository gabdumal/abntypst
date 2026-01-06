// # Abbreviations. Abreviaturas.
// NBR 14724:2024 4.2.1.11

#import "/template/common/util/text_in_english.typ": text_in_english

#let abbreviations_entries = (
  (
    key: "tic",
    short: "TIC",
    plural: "TICs",
    long: "Tecnologia de Informação e Comunicação",
    longplural: "Tecnologias de Informação e Comunicação",
    group: "Computação",
  ),
  (
    key: "sdg",
    short: "SGD",
    long: "Gradiente Descendente Estocástico",
    description: [Em inglês, #text_in_english[Stochastic Gradient Descent]],
    group: "Computação",
  ),
  (key: "ia", short: "IA", long: "Inteligência Artificial", group: "Computação"),
  (
    key: "sad",
    short: "SAD",
    plural: "SADs",
    long: "Sistema de Apoio à Decisão",
    longplural: "Sistemas de Apoio à Decisão",
    group: "Computação",
  ),
  (
    key: "bi",
    short: "BI",
    long: [#text_in_english[Business Intelligence]],
    description: "Em português, Inteligência de Negócios.",
    group: "Computação",
  ),
  (key: "ibge", short: "IBGE", long: "Instituto Brasileiro de Geografia e Estatística", group: "Normatização"),
  (key: "abnt", short: "ABNT", long: "Associação Brasileira de Normas Técnicas", group: "Normatização"),
  (
    key: "nbr",
    short: "NBR",
    plural: "NBRs",
    long: "Norma Brasileira",
    longplural: "Normas Brasileiras",
    group: "Normatização",
  ),
)
