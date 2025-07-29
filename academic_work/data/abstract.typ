#let abstract_in_main_language = {
  (
    title: "Resumo",
    keywords: (
      "análise de sensibilidade",
      "preços dos insumos",
      "lucratividade",
      "modelagem analítica",
    ),
    body: [
      Este trabalho apresenta uma análise de sensibilidade aplicada ao contexto de uma confeitaria fictícia, com o objetivo de investigar o impacto da variação de preços dos insumos na lucratividade de receitas.
      Utilizou-se modelagem analítica com apoio de ferramentas como PlantUML, SQLite, PostgreSQL e Apache Superset para criação, manipulação e visualização de dados.
      Foram escolhidas três receitas representativas — pão francês, brigadeiro e bolo de milho verde —, modeladas em banco de dados e analisadas por meio de simulações de aumento de custos em 5%, 10% e 15% para cada insumo.
      A análise permitiu identificar quais insumos exercem maior influência nos resultados e apoiar decisões estratégicas sobre precificação e diversificação do portfólio de produtos.
    ],
  )
}

#let first_abstract_in_secondary_language = {
  (
    title: "Abstract",
    keywords: (
      "sensitivity analysis",
      "ingredient prices",
      "profitability",
      "analytical modeling",
    ),
    body: [
      #text(
        lang: "en",
        region: "us",
      )[
        This study presents a sensitivity analysis applied to the context of a fictional bakery, aiming to investigate the impact of price variations of ingredients on recipe profitability.
        Analytical modeling was employed with the support of tools such as PlantUML, SQLite, PostgreSQL, and Apache Superset for data creation, manipulation, and visualization.
        Three representative recipes — french bread, brigadeiro, and corn cake — were modeled in a database and analyzed through simulations of cost increases of 5%, 10%, and 15% for each ingredient.
        The analysis allowed the identification of which ingredients exert the greatest influence on the results and supported strategic decisions regarding pricing and diversification of the product portfolio.
      ]
    ],
  )
}

#let abstracts = (
  abstract_in_main_language,
  first_abstract_in_secondary_language,
)
