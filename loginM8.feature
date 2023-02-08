Funcionalidade: Autenticação de usuário
    Como cliente da EBAC-SHOP
    Quero autenticar usuário e senha
    Para acessar a página de checkout

    Contexto:
        Dado que eu acesse a página de autenticação do EBAC-SHOP

    Cenario: Autenticar múltiplos usuários
        Quando eu digitar o <usuario>
        E a <senha>
        Então deve aparecer a mensagem "Olá, <nome>" na página de checkout

        Exemplos:
            | usuario                  | senha           | nome     |
            | deborahnunes@gmail.com   | 12356987@       | deborah  |
            | a.clara@outlook.com.br   | 89562924*       | anaclara |
            | superkalel@gmail.com     | 1144785269689** | kalel    |

    Esquema do Cenario: Usuário inválido
        Quando eu digitar o <usuario>
        E a <senha>
        Então deve aparecer a <mensagem>

        Exemplos:
            | usuario             | senha        | mensagem                    |
            | deborahgmail.com    | 12356987@    | E-mail com formato inválido |
            | invalid@hotmail.com | 3@Zqaj5FqGzm | Usuário inexistente         |

    Esquema do Cenario: Usuário com senha inválida
        Quando eu digitar o usuário "deborah@gmail.com"
        E a senha "123@fail"
        Então deve aparecer a mensagem "Usuário ou senha inválidos"
