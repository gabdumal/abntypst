#import "/template/common/components/equation.typ": equation

= Equações

Equações podem ser escritas dentro do ambiente cercado por `$ ... $`.

$ a^2 + b^2 = c^2 $

Se quiser escrever texto e numerar suas equações, utilize o comando `equation`, que recebe como argumento opcional `width`, para determinar a largura do bloco de equações.
Além disso, você pode atribuir rótulos a uma equação para citá-la no texto. Por exemplo, essa é a @equation:pythagorean_theorem e essa é a @equation:triangular_number_formula.

#equation(width: 50%)[
  Sejam $a$, $b$ e $c$ o comprimento dos lados de um triângulo retângulo.
  Então, sabemos que:
  $ a^2 + b^2 = c^2 $ <equation:pythagorean_theorem>

  prove por indução:
  $ sum_(k=1)^n k = (n(n+1)) / 2 $ <equation:triangular_number_formula>
]
