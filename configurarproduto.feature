Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que eu acesse a página do EBAC-SHOP

  Scenario Outline: Seleções de cor, tamanho e quantidade válidos
    When eu selecionar a <cor>
    And o <tamanho>
    And a <quantidade>
    Then deve emitir a mensagem "Produto adicionado ao carrinho"

    Examples:
      | cor    | tamanho | quantidade |
      | blue   | XS      | 1          |
      | orange | S       | 5          |
      | red    | M       | 9          |
      | blue   | L       | 10         |
      | grey   | XL      | 11         |

  Scenario Outline: Seleções de cor inválida
    When eu selecionar a <cor>
    And o <tamanho>
    And a <quantidade>
    Then deve emitir a mensagem de erro "Selecionar Cor: Por favor, escolha uma opção"

    Examples:
      | cor  | tamanho | quantidade |
      | null | XS      | 1          |
      | null | S       | 5          |
      | null | M       | 9          |
      | null | L       | 10         |
      | null | XL      | 11         |

  Scenario Outline: Seleções de tamanho inválido
    When eu selecionar a <cor>
    And o <tamanho>
    And a <quantidade>
    Then deve emitir a mensagem de erro "Selecionar Tamanho: Por favor, escolha uma opção"

    Examples:
      | cor    | tamanho | quantidade |
      | blue   | null    | 1          |
      | orange | null    | 5          |
      | red    | null    | 9          |
      | blue   | null    | 10         |
      | blue   | null    | 11         |

  Scenario Outline: Seleções de quantidade inválida
    When eu selecionar a <cor>
    And o <tamanho>
    And a <quantidade>
    Then deve emitir a mensagem de erro <mensagem>

    Examples:
      | cor    | tamanho | quantidade | mensagem                             |
      | blue   | XS      | 11         | Permitido selecionar até 10 produtos |
      | orange | S       | 0          | Quantidade inválida                  |
      | red    | M       | null       | Quantidade inválida                  |
      | blue   | L       | 15         | Permitido selecionar até 10 produtos |
      | blue   | XL      | 30         | Permitido selecionar até 10 produtos |

  Scenario: Limpar configuração dos produtos
    When eu clicar no botão "Limpar"
    Then deve aparecer a mensagem "Selecione a cor e o tamanho desejados"