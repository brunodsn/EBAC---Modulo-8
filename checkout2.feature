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


            Esquema do Cenario: Campo e-mail incorreto
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "O campo e-mail é de preenchimento obrigatório. Favor informar e-mail válido."

            Exemplos:
            | nome      | sobrenome | pais   | endereço              | cidade   | cep       | telefone       | e-mail                     |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568        | Louveira | 13291-028 | (19) 3575-3287 | deborahnunesgmail.com      |
            | Ana Clara | Silva     | Brasil | Rua Dom Pedro II, 736 | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br___. |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895       | Valinhos | 1380-970  | (19) 3376-4176 | superkalel@gmail,commm     |

            Esquema do Cenario: Todos os campos preenchidos corretamente
            Quando eu digitar <nome>
            E digitar <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            Então deve aparecer a mensagem "Existe campo sem preenchimento. Favor verificar e corrigir."

            Exemplos:
            | nome      | sobrenome | país   | endereço        | cidade   | cep       | telefone       | e-mail                 |
            | Deborah   | Nunes     | Brasil | Avenida 3, 568  | Louveira | .         | (19) 3575-3287 | deborahnunes@gmail.com |
            | Ana Clara | Silva     | Brasil | .               | Vinhedo  | 13530-360 | (19) 3415-6607 | a.clara@outlook.com.br |
            | Kalel     | Penteado  | Brasil | Avenida 13, 895 | Valinhos | 1380-970  | (19) 3376-4176 | .                      |
