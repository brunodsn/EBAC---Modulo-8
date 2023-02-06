Feature: Autenticação de usuário
    Como cliente da EBAC-SHOP
    Quero autenticar usuário e senha
    Para acessar a página de checkout

    Background:
        Given que eu acesse a página de autenticação do EBAC-SHOP

    Scenario Outline: Autenticar múltiplos usuários
        When eu digitar o <usuario>
        And a <senha>
        Then deve aparecer a mensagem "Olá, <nome>" na página de checkout

        Examples:
            | usuario                  | senha           | nome     |
            | deborahnunes@gmail.com   | 12356987@       | deborah  |
            | a.clara@outlook.com.br   | 89562924*       | anaclara |
            | superkalel@gmail.com     | 1144785269689** | kalel    |
            | mah.teus@hotmail.com.br  | 0202368         | matheus  |
            | donizete.pa@yahoo.com.br | 6936960123      | donizete |

    Scenario Outline: Usuário inválido
        When eu digitar o <usuario>
        And a <senha>
        Then deve aparecer a <mensagem>

        Examples:
            | usuario             | senha        | mensagem                    |
            | deborahgmail.com    | 12356987@    | E-mail com formato inválido |
            | invalid@hotmail.com | 3@Zqaj5FqGzm | Usuário inexistente         |

    Scenario Outline: Usuário com senha inválida
        When eu digitar o usuário "deborah@gmail.com"
        And a senha "123@fail"
        Then deve aparecer a mensagem "Usuário ou senha inválidos"