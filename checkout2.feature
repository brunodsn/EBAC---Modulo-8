            #Language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu conclua meu cadastro

            Cenário: Checkout
            Quando eu fizer o "cadastro"
            E estiver digitando no campo "obrigatório"
            Então estes campos devem conter "asteriscos"

            Cenário: Formato inválido
            Quando eu digitar no campo destinado para "email"
            E estiver permitindo campo email com formato inválido
            Então deve parecer uma mensagem de "erro"

            Cenário: Campos vazios
            Quando eu deixar algum "campo vazio" em branco
            E e tentar pular para o proxímo
            Então deve exibir uma mensagem de alerta "campo vazio"

            Esquema do Cenário: Campos incompletos
            Quando eu deixar o <campo> vazio
            Então deve exibir a <mensagem>
            | campo | mensagem      |
            | ----     | "campo vazio" |
            | ----     | "campo vazio" |
