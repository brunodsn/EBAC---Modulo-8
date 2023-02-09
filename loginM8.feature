            #Language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o Login na plataforma

            Cenário: Dados válidos
            Quando eu digitar o usuário "matheus@gmail.com"
            E a senha "0123!"
            Então deve ser direcionado para a tela do "checkout"

            Cenário: Campos inválidos
            Quando eu digitar o usuário "deborahnunes@gmail.com"
            E a senha "987@"
            Então deve exibir uma mensagem de alerta "usuários ou senha inválidos"

            Esquema do Cenário: Usuário ou senha inválida
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem>
            | usuário              | senha  | mensagem                      |
            | "deborahnunes@gmail.com" | "123321" | "usuários ou senha inválidos" |
            | "matheus@gmail.com"    | "oioioi" | "usuários ou senha inválidos" |
