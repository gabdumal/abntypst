#import "/template/components/figure.typ": include_figure

= Tabelas

A @amounts_of_ingredients é um exemplo de tabela conforme as Normas de apresentação tabular do @ibge #cite(<ibge:1993:normas_apresentacao_tabular>).

#include_figure(
  label: <amounts_of_ingredients>,
  caption: "Quantidades dos ingredientes para uma receita de cookies",
)[
  #table(
    columns: (auto, auto),
    table.header([Amount], [Ingredient]),
    [360g], [Baking flour],
    [250g], [Butter (room temp.)],
    [150g], [Brown sugar],
    [100g], [Cane sugar],
    [100g], [70% cocoa chocolate],
    [100g], [35-40% cocoa chocolate],
    [2], [Eggs],
    [Pinch], [Salt],
    [Drizzle], [Vanilla extract],
  )
]
