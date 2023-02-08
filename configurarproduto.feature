        Funcionalidade: Configurar produto
        Como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto
        E escolher a quantidade
        Para depois inserir no carrinho

        Contexto:
        Dado que eu acesse a página do EBAC-SHOP

        Cenario: Seleções de cor, tamanho e quantidade válidos
        Quando eu selecionar a <cor>
        E o <tamanho>, <quantidade>
        Então deve emitir a mensagem "Produto adicionado ao carrinho"

        Exemplos:
            | cor     | tamanho | quantidade |
            | azul    | M       | 1          |
            | laranja | P       | 5          |


        Cenario: Seleções de cor inválida
        Quando eu selecionar a <cor>
        E o <tamanho>, <quantidade>
        Então deve emitir a mensagem de erro "Selecionar Cor: Por favor, escolha uma opção"

        Exemplos:
            | cor  | tamanho | quantidade |
            | nulo | G       | 1          |
            | nulo | P       | 5          |
            | nulo | M       | 9          |


        Cenario: Seleções de tamanho inválido
        Quando eu selecionar a <cor>
        E o <tamanho>, <quantidade>
        Então deve emitir a mensagem de erro "Selecionar Tamanho: Por favor, escolha uma opção"

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | nulo   | 1          |
            | laranja  | nulo    | 5          |
            | vermelho | nulo    | 9          |


        Cenario: Seleções de quantidade inválida
        Quando eu selecionar a <cor>
        E o <tamanho>, <quantidade>
        Então deve emitir a mensagem de erro <mensagem>

        Exemplos:
            | cor      | tamanho | quantidade | mensagem                             |
            | azul     | G       | 11         | Permitido selecionar até 10 produtos |
            | laranja  | P       | 0          | Quantidade inválida                  |
            | vermelho | M       | nulo       | Quantidade inválida                  |


Cenario: Limpar configuração dos produtos
Quando eu clicar no botão "Limpar"
Então deve aparecer a mensagem "Selecione a cor e o tamanho desejados"