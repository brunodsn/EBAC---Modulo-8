            #Language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu conclua meu cadastro
            
            Cenário: Dados válidos preenchidos
            Quando inserir dados em campos com marcação
            E dados com informações válidas
            Então exibir mensagem "Cadastro realizado com sucesso"

            Cenário: Dados não preenchidos
            Quando inserir dados em campos com marcação
            E um campo com valor vazio
            Então exibir mensagem de alerta "Campos marcados com * são obrigatórios"


            Cenário: Autenticação de email
            Quando inserir email "deborahnunes@gmail.com"
            E a senha "9876#" válidos
            Então exibir mensagem "E-mail cadastrado com sucesso"



            Esquema do Cenário: Autenticação de email inválido
            Quando eu digitar o <email>
            E os <caracteres> não forem válidos
            Então deve exibir <mensagem> de erro


            | email                      | senha      | mensagem                        |
            | "deborahnunes#gmail.com"   | "9876#"    | "Formato de E-mail Inválido"    |
            | "#matheus$@outlook.com"    | "321123"   | "Formato de E-mail Inválido"    |
