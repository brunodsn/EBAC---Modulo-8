            #Language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a configuração do produto

            Cenário: Dados obrigatórios
            Quando eu selecionar "cor", "tamanho" e "quantidade"
            E clicar para finalizar
            Então deve exibir a mensagem de "item obrigatório cadastrado com sucesso"

            Cenário: Itens por venda
            Quando eu selecionar "10 produtos" por venda
            E inserir no carrinho "mais de 10 produtos"
            Então deve exibir uma mensagem de alerta "apenas 10 itens por venda"

            Cenário: Limpar produto
            Quando eu selecionar o botão "limpar"
            E eu clicar em confirmar
            Então eu devo retornar a "pagina de produtos"

            Esquema do Cenário: Configurar produto
            Quando eu selecionar <cor>, <tamanho> e <quantidade>
            E clicar para finalizar
            Então deve exibir a <mensagem>
            | cor      | tamanho | quantidade | mensagem                                |
            | "branco" | g       | 2          | item obrigatório cadastrado com sucesso |
            | "azul"   | m       | 1          | item obrigatório cadastrado com sucesso |
