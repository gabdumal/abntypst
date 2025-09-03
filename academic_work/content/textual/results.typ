#import "/template/common/components/figure.typ": describe_figure

= Resultados

O dashboard construído por meio dessa pesquisa pode ser utilizado para monitorar e analisar o desempenho financeiro das receitas da confeitaria, permitindo uma tomada de decisão mais informada e estratégica.
Sua captura pode ser encontrada no repositório público do projeto @tortinhas_quixotescas:2025:repository_dcc166_atv2.

O gráfico de linhas apresentado na @brigadeiro_ingredient_sensitivity_gross_profit mostra a sensibilidade do lucro bruto da receita de brigadeiro em relação ao aumento de custo de cada um dos insumos.
A linha azul no topo do grafo mostra a referência do lucro bruto original, qual seja R#sym.dollar 2,04.
O ingrediente que menos impacta nos lucros é a manteiga sem sal, representada como #emph[Unsalted butter], que com um aumento de 15% no custo, ainda assim resulta em um lucro bruto de R#sym.dollar 1,97.
Já o leite condensado, representado como #emph[Sweetened condensed milk], impacta fortemente o lucro, levando-o a R#sym.dollar 1,75, R#sym.dollar 1,45 e R#sym.dollar 1,16 com os aumentos de 5%, 10% e 15%, respectivamente.

#describe_figure(
  [#figure(
    caption: [Gráfico de linhas mostrando a sensibilidade do lucro bruto da receita de brigadeiro em relação ao aumento de custo dos insumos],
    image(
      "../../assets/images/brigadeiro_ingredient_sensitivity_gross_profit.png",
      width: 100%,
    ),
  )<brigadeiro_ingredient_sensitivity_gross_profit>],
)

Gráficos análogos foram construídos para as receitas de pão francês e bolo de milho verde.
Para o primeiro, é a farinha de trigo que impacta mais fortemente o lucro, levando-o de R#sym.dollar 2,02 a R#sym.dollar 1,92, R#sym.dollar 1,82 e R#sym.dollar 1,72 com os aumentos de 5%, 10% e 15%, respectivamente.
Já para o bolo de milho verde, a lata de milho verde é o insumo mais impactante, reduzindo o lucro de R#sym.dollar 5,77 a R#sym.dollar 5,41, R#sym.dollar 5,05 e R#sym.dollar 4,69 com os aumentos de 5%, 10% e 15%, respectivamente.
Nesse caso, o leite de coco também se mostra relevante, pois reduz o lucro a R#sym.dollar 5,50, R#sym.dollar 5,22 e R#sym.dollar 4,95 com os mesmos aumentos.

Outro gráfico interessante é o mapa de calor que relaciona a perda de pontos percentuais da margem de lucro de cada receita com o aumento de 15% de custo de cada insumo, como pode ser visto na @ingredient_impact_matrix_15pct_margin.
Nesse mapa, percebe-se que a célula mais intensamente afetada é a de uso de leite condensado na receita de brigadeiro, que reduz a margem de lucro de 17.04% em 7,4 pontos percentuais.
Em seguida, a lata de milho verde na receita de bolo de milho verde reduz a margem de lucro de 23,08% em 4,32 pontos percentuais, e o leite de coco a reduz em 3,3 pontos percentuais.

#describe_figure(
  [#figure(
    caption: [Mapa de calor mostrando a perda de pontos percentuais da margem de lucro de cada receita com o aumento de 15% de custo dos insumos],
    image(
      "../../assets/images/ingredient_impact_matrix_15pct_margin.png",
      width: 100%,
    ),
  )<ingredient_impact_matrix_15pct_margin>],
)
