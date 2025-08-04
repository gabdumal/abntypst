#import "/template/components/figure.typ": include_figure

= Metodologia

O processo de modelagem do problema foi realizado em várias etapas, utilizando ferramentas de inteligência artificial (IA) para auxiliar na criação do modelo de dados, na geração de dados sintéticos e na visualização dos resultados.

== Modelagem

Como primeiro passo da modelagem do problema, foi desenvolvido um diagrama de classes utilizando a ferramenta PlantUML @plantuml:2025:plantuml para representar a estrutura dos dados relevantes para o domínio de uma confeitaria.

Este modelo, apresentado na @class_diagram, define as entidades a seguir.
(1) #emph[Dish]: representa uma receita, contendo informações como nome, preço de venda e peso resultante em gramas.
(2) #emph[Ingredient]: representa um insumo e seu nome.
(3) #emph[Ingredient_Cost]: armazena o custo de dado insumo em um determinado período de tempo, com informações de data de início e fim do intervalo, e o custo por grama.
(4) #emph[Usage]: relaciona um insumo a uma receita, especificando a quantidade necessária em gramas.

#include_figure(
  label: <class_diagram>,
  caption: [Diagrama de classes UML representando a estrutura de dados do sistema de confeitaria],
  image(
    "../../assets/images/class_diagram.png",
    width: 100%,
  ),
)

Com o modelo de dados definido, foi utilizado o sistema gerenciador de banco de dados SQLite @sqlite:2025:sqlite para criar a estrutura lógica do banco.
As tabelas foram criadas de acordo com o diagrama de classes apresentado por meio da linguagem SQL, com o apoio da ferramenta de @ia DeepSeek @deepseek:2025:deepseek para tradução da modelagem UML para SQL.

== Geração de dados

Em seguida, os autores criaram por meio da mesma ferramenta de @ia um conjunto de dados sintéticos referentes a receitas, insumos e seus custos, descritos em comandos de inserção de dados SQL.
Tais comandos podem ser acessados por meio do repositório público do projeto @tortinhas_quixotescas:2025:repository_dcc166_atv2.

=== Definição das receitas

As três receitas escolhidas, quais sejam pão francês, brigadeiro e bolo de milho verde, são baseadas em receitas reais e foram selecionadas por utilizarem poucos ingredientes, facilitando a análise, com o compartilhamento de alguns insumos, como manteiga e açúcar, entre si.
Os valores atribuídos aos preços dos insumos foram escolhidos de maneira arbitrária, uma vez que estes podem variar drasticamente por fatores como região e fornecedor.
Contudo, buscamos representar preços praticados no mercado brasileiro, de forma que foi mantida uma relação de proporção lógica entre os produtos.
Por exemplo, o leite condensado possui um custo superior ao da água.

A seleção das receitas também considerou a variação de volume de armazenamento de seus ingredientes.
Esta pode ser uma informação relevante para a tomada de decisão, pois ingredientes de pequeno volume que impactam drasticamente o lucro podem e devem ser comprados em quantidades maiores para mitigar riscos de desabastecimento ou aumento de preço.
Adicionalmente, buscamos analisar a hipótese de que o estabelecimento deve procurar diversificar seu portfólio de produtos com receitas que não dependam excessivamente dos mesmos ingredientes, distribuindo assim o risco associado à volatilidade de preços.

=== Criação dos dados sintéticos

Após a criação do banco de dados e dos dados sintéticos, os autores substituíram o sistema de banco de dados SQLite pelo PostgreSQL @postgresql:2025:postgresql, que foi hospedado em um servidor remoto.
Isso foi feito para garantir maior robustez e escalabilidade, além de permitir o acesso simultâneo por múltiplos usuários.

Então, a ferramenta de @ia DeepSeek foi novamente utilizada para traduzir os comandos SQL de um dialeto para outro.
Em seguida, os dados foram devidamente inseridos no banco de dados, garantindo a integridade referencial e a consistência dos dados.
Por fim, os autores conectaram o banco de dados PostgreSQL ao sistema de visualização e criação de dashboards.

== Visualização dos resultados

A fim de criar o dashboard para visualização dos resultados, foi utilizada a ferramenta de @bi de código aberto Apache Superset @apache_superset:2025:apache_superset.
Para fins de apresentação e trabalho colaborativo, foi empregada a plataforma Preset.io @preset:2025:preset, uma solução baseada em nuvem que hospeda o Apache Superset, facilitando o acesso remoto e o compartilhamento dos dashboards.
Assim, o Preset.io permitiu a conexão direta com o banco de dados PostgreSQL e a criação de gráficos interativos.

Os autores elaboraram, com apoio da ferramenta DeepSeek, consultas SQL para extrair dados relevantes do banco, como o custo total de produção de cada receita, o lucro e a margem de lucro, considerando seus insumos e seus custos de venda.
Cada consulta foi transformada em um dataset virtual no Superset.
Assim, foi possível criar gráficos que utilizem esses datasets como fonte de dados.
Os gráficos, por sua vez, foram organizados em um dashboard composto de cinco seções: (1) informações gerais em tabelas, (2) análise de risco dos insumos considerando o uso médio em todas as receitas, e (3, 4, 5) análise de impacto de cada insumo nas três receitas selecionadas.

O caráter da análise de sensibilidade foi implementado por meio da simulação de cenários de aumento de custo de cada insumo nas proporções de +5%, +10% e +15%, codificados nas consultas SQL utilizadas para gerar os datasets.
Assim, para cada receita, foi possível observar o lucro resultante de uma porção caso se variasse cada insumo em cada uma das proporções.
Também foi extraído o #emph[delta] do lucro estimado em relação ao lucro original, o que diretamente indica o impacto do aumento de custo do insumo no lucro da receita.
