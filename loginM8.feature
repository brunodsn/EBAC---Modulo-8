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
            Ou eu digitar usuário "deborahnunes@gmail.com
            E a senha "9876#"
            Então deve ser direcionado para a tela do "checkout"

            Cenário: Usuário ou senha inválida
            Quando eu digitar o "matheusgmail.com"
            E a "1230"
            Então deve exibir a "usuário ou senha inválidos"
           
            Esquema do Cenário: Autenticações válidas
            Quando eu digitar o <usuario>
            E a <senha>
            Então o sistema deve exibir meus pedidos e a <mensagem>

            Exemplos:
            | usuario                  | senha       | mensagem           |
            | "matheus@gmail.com"      | "0123!"     | "fazer o checkout" |
            | "deborahnunes@gmail.com" | "9876#"     | "fazer o checkout" |

