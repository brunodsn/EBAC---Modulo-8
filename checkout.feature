Feature: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Scenario Outline: Todos os campos obrigatórios corretos
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "Deseja finalizar a compra?"

        Examples:
            | nome      | sobrenome | país   | endereço              | cidade   | cep       | telefone       | e-mail                   |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi   | Brasil | Rua 5, 662            | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | Brasil | Avenida 7, 895        | Jundiai  | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo nome incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo Nome é de preenchimento obrigatório. Deve conter apenas letras e espaço."

        Examples:
            | nome       | sobrenome | pais   | endereço              | cidade   | cep       | telefone       | e-mail                   |
            | Deborah,   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana_Clara  | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | null       | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus123 | Polozzi   | Brasil | Rua 5, 662            | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete $ | Padilha   | Brasil | Avenida 7, 895        | Jundiai  | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo sobrenome incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo Sobrenome é de preenchimento obrigatório. Deve conter apenas letras e espaço."

        Examples:
            | nome      | sobrenome   | pais   | endereço              | cidade   | cep       | telefone       | e-mail                   |
            | Deborah   | Nunes_      | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva@      | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado123 | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi++   | Brasil | Rua 5, 662            | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha(    | Brasil | Avenida 7, 895        | Jundiai  | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |


    Scenario Outline: Campo país sem informação
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "Favor selecionar um país."

        Examples:
            | nome      | sobrenome | pais | endereço              | cidade   | cep       | telefone       | e-mail                   |
            | Deborah   | Nunes     | null | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | null | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | null | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi   | null | Rua 5, 662            | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | null | Avenida 7, 895        | Jundiai  | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo endereço incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo Endereço é de preenchimento obrigatório. Não deve conter caracteres especiais."

        Examples:
            | nome      | sobrenome | pais   | endereço            | cidade   | cep       | telefone       | e-mail                   |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568  *   | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II    | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895 *() | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi   | Brasil | null                | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | Brasil | null                | Jundiai  | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo cidade incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo Cidade é de preenchimento obrigatório. Deve conter apenas letras e espaços."

        Examples:
            | nome      | sobrenome | pais   | endereço              | cidade       | cep       | telefone       | e-mail                   |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | null         | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo@#$.  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos 234 | 1380-970  | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi   | Brasil | Rua 5, 662            | Campinas__   | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | Brasil | Avenida 7, 895        | Jundiai (    | 14589-970 | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo cep incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo CEP é de preenchimento obrigatório. Deve conter apenas números."

        Examples:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep         | telefone       | e-mail                   |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-02888 | (19) 3575-3287 | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Valinhos | 13530-360$% | (19) 3415-6607 | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970äsd | (19) 3376-4176 | superkalel@gmail.com     |
            | Matheus   | Polozzi   | Brasil | Rua 5, 662            | Campinas | null        | (19) 3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | Brasil | Avenida 7, 895        | Jundiai  | cep         | (11) 3724-2356 | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo telefone incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo Telefone é de preenchimento obrigatório. Favor informar telefone com DDD."

        Examples:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone           | e-mail                   |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | () 3575-3287       | deborahnunes@gmail.com   |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 2343415-6607  | a.clara@outlook.com.br   |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | telefone 376-4176  | superkalel@gmail.com     |
            | Matheus   | Polozzi   | Brasil | Rua 5, 662            | Campinas | 13530-000 | (19) @!#$3575-9365 | mah.teus@hotmail.com.br  |
            | Donizete  | Padilha   | Brasil | Avenida 7, 895        | Jundiai  | 14589-970 | null               | donizete.pa@yahoo.com.br |

    Scenario Outline: Campo e-mail incorreto
        When eu digitar <nome>
        And digitar <sobrenome>
        And digitar <pais>
        And digitar <endereco>
        And digitar <cidade>
        And digitar <cep>
        And digitar <telefone>
        And digitar <e-mail>
        Then deve aparecer a mensagem "O campo e-mail é de preenchimento obrigatório. Favor informar e-mail válido."

        Examples:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone       | e-mail                           |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com asdasdasd |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br___.       |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.,commm          |
            | Matheus   | Polozzi   | Brasil | Rua 5, 662            | Campinas | 13530-000 | (19) 3575-9365 | mah.teus@hotmail.com.br+         |
            | Donizete  | Padilha   | Brasil | Avenida 7, 895        | Jundiai  | 14589-970 | (11) 3724-2356 | null                             |
