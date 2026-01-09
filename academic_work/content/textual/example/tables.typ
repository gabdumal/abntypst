#import "/template/common/components/figure.typ": describe_figure
#import "/template/common/components/table.typ": format_table

= Tabelas

A @table:amounts_of_ingredients se trata de uma tabela simples, com poucas linhas de dados em português, que representa quantidades de ingredientes para uma receita de bolo de chocolate.

Ambas são exemplos de tabela conforme as Normas de apresentação tabular do @ibge #cite(<ibge:1993:normas_apresentacao_tabular>).

#describe_figure(
  note: [Não testamos essa receita.],
  [#figure(
    caption: "Quantidades dos ingredientes para uma receita de bolo de chocolate",
    block(
      width: 50%,
      format_table(
        table(
          columns: (5fr, 3fr),
          table.header([Ingrediente], [Quantidade]),
          [Farinha de trigo], [2 xícaras],
          [Açúcar], [1 e 1/2 xícaras],
          [Cacau em pó], [1/2 xícara],
          [Ovos], [3 unidades],
          [Leite], [1 xícara],
          [Óleo], [1/2 xícara],
          [Fermento em pó], [1 colher de sopa],
        ),
      ),
    ),
  )<table:amounts_of_ingredients>],
)

#lorem(100)

Já a @table:monthly_sales_data é um exemplo de tabela longa, com muitas linhas de dados em português, que representa dados sintéticos de vendas mensais por região no Brasil (2023-2024).

#describe_figure(
  [#figure(
    caption: "Dados de vendas mensais por região no Brasil (2023-2024)",
    format_table(
      table(
        columns: (1.5fr, 1fr, 1fr, 1fr, 1fr),
        table.header([Região], [Mês/Ano], [Vendas (R#sym.dollar)], [Unidades], [Crescimento (%)]),
        [Norte], [Jan/2023], [R#sym.dollar 125.430,00], [1.254], [--],
        [Norte], [Fev/2023], [R#sym.dollar 134.567,00], [1.346], [7,3%],
        [Norte], [Mar/2023], [R#sym.dollar 142.890,00], [1.429], [6,2%],
        [Norte], [Abr/2023], [R#sym.dollar 138.234,00], [1.382], [-3,3%],
        [Norte], [Mai/2023], [R#sym.dollar 156.789,00], [1.568], [13,4%],
        [Norte], [Jun/2023], [R#sym.dollar 167.234,00], [1.672], [6,7%],
        [Nordeste], [Jan/2023], [R#sym.dollar 234.567,00], [2.346], [--],
        [Nordeste], [Fev/2023], [R#sym.dollar 245.890,00], [2.459], [4,8%],
        [Nordeste], [Mar/2023], [R#sym.dollar 267.123,00], [2.671], [8,6%],
        [Nordeste], [Abr/2023], [R#sym.dollar 278.456,00], [2.785], [4,2%],
        [Nordeste], [Mai/2023], [R#sym.dollar 289.789,00], [2.898], [4,1%],
        [Nordeste], [Jun/2023], [R#sym.dollar 312.345,00], [3.123], [7,8%],
        [Centro-Oeste], [Jan/2023], [R#sym.dollar 187.654,00], [1.877], [--],
        [Centro-Oeste], [Fev/2023], [R#sym.dollar 195.432,00], [1.954], [4,1%],
        [Centro-Oeste], [Mar/2023], [R#sym.dollar 203.876,00], [2.039], [4,3%],
        [Centro-Oeste], [Abr/2023], [R#sym.dollar 198.234,00], [1.982], [-2,8%],
        [Centro-Oeste], [Mai/2023], [R#sym.dollar 214.567,00], [2.146], [8,2%],
        [Centro-Oeste], [Jun/2023], [R#sym.dollar 225.890,00], [2.259], [5,3%],
        [Sudeste], [Jan/2023], [R#sym.dollar 456.789,00], [4.568], [--],
        [Sudeste], [Fev/2023], [R#sym.dollar 478.234,00], [4.782], [4,7%],
        [Sudeste], [Mar/2023], [R#sym.dollar 495.678,00], [4.957], [3,6%],
        [Sudeste], [Abr/2023], [R#sym.dollar 512.345,00], [5.123], [3,4%],
        [Sudeste], [Mai/2023], [R#sym.dollar 534.567,00], [5.346], [4,3%],
        [Sudeste], [Jun/2023], [R#sym.dollar 567.890,00], [5.679], [6,2%],
        [Sul], [Jan/2023], [R#sym.dollar 298.765,00], [2.988], [--],
        [Sul], [Fev/2023], [R#sym.dollar 312.456,00], [3.125], [4,6%],
        [Sul], [Mar/2023], [R#sym.dollar 325.789,00], [3.258], [4,3%],
        [Sul], [Abr/2023], [R#sym.dollar 334.567,00], [3.346], [2,7%],
        [Sul], [Mai/2023], [R#sym.dollar 345.890,00], [3.459], [3,4%],
        [Sul], [Jun/2023], [R#sym.dollar 356.234,00], [3.562], [3,0%],
        [Norte], [Jul/2023], [R#sym.dollar 172.567,00], [1.726], [3,2%],
        [Norte], [Ago/2023], [R#sym.dollar 165.432,00], [1.654], [-4,1%],
        [Norte], [Set/2023], [R#sym.dollar 178.890,00], [1.789], [8,1%],
        [Norte], [Out/2023], [R#sym.dollar 184.567,00], [1.846], [3,2%],
        [Norte], [Nov/2023], [R#sym.dollar 192.345,00], [1.923], [4,2%],
        [Norte], [Dez/2023], [R#sym.dollar 205.678,00], [2.057], [6,9%],
        [Nordeste], [Jul/2023], [R#sym.dollar 323.456,00], [3.235], [3,6%],
        [Nordeste], [Ago/2023], [R#sym.dollar 334.789,00], [3.348], [3,5%],
        [Nordeste], [Set/2023], [R#sym.dollar 345.123,00], [3.451], [3,1%],
        [Nordeste], [Out/2023], [R#sym.dollar 356.789,00], [3.568], [3,4%],
        [Nordeste], [Nov/2023], [R#sym.dollar 367.234,00], [3.672], [2,9%],
        [Nordeste], [Dez/2023], [R#sym.dollar 389.567,00], [3.896], [6,1%],
        table.footer(
          table.hline(stroke: 1pt),
          table.cell(
            align: center,
            [Região],
          ),
          table.cell(
            align: center,
            [Mês/Ano],
          ),
          table.cell(
            align: center,
            [Vendas (R#sym.dollar)],
          ),
          table.cell(
            align: center,
            [Unidades],
          ),
          table.cell(
            align: center,
            [Crescimento (%)],
          ),
        ),
      ),
    ),
  )<table:monthly_sales_data>],
)

#lorem(75)

#lorem(90)
