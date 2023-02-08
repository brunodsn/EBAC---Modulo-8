            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Esquema do Cenario: Todos os campos obrigatórios corretos
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "Deseja finalizar a compra?"

            Exemplos:
            | nome      | sobrenome | país   | endereço              | cidade   | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo nome incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo Nome é de preenchimento obrigatório. Deve conter apenas letras e espaço."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone       | e-mail                 |
            | Deborah,  | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana_Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | nulo      | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo sobrenome incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo Sobrenome é de preenchimento obrigatório. Deve conter apenas letras e espaço."

            Exemplos:
            | nome      | sobrenome   | pais   | endereço              | cidade   | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes_      | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva@      | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado123 | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |



            Esquema do Cenario: Campo país sem informação
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "Favor selecionar um país."

            Exemplos:
            | nome      | sobrenome | pais | endereço              | cidade   | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes     | nulo | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | nulo | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | nulo | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |

            Esquema do Cenario: Campo endereço incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo Endereço é de preenchimento obrigatório. Não deve conter caracteres especiais."

            Exemplos:
            | nome      | sobrenome | pais   | endereço            | cidade   | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568  *   | Louveira | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II    | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895 *() | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo cidade incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo Cidade é de preenchimento obrigatório. Deve conter apenas letras e espaços."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade       | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | nulo         | 13291-028 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo@#$.  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos 234 | 1380-970  | (19) 3376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo cep incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo CEP é de preenchimento obrigatório. Deve conter apenas números."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep         | telefone       | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-02888 | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Valinhos | 13530-360$% | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970äsd | (19) 3376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo telefone incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo Telefone é de preenchimento obrigatório. Favor informar telefone com DDD."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone          | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | () 3575-3287      | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 2343415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | telefone 376-4176 | superkalel@gmail.com   |


            Esquema do Cenario: Campo e-mail incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo e-mail é de preenchimento obrigatório. Favor informar e-mail válido."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone       | e-mail                     |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunesgmail.com      |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br___. |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail,commm     |
