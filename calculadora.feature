            #language: pt

            Contexto: Dado que eu acesse a calculadora
            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Quando eu somar 2+2
            Então o resultado vai ser 4

            Esquema do Cenario: Soma de 2 números
            Quando eu somar o <numero_1> com <numero_2>
            Então o resultado deve ser <resultado>

            Exemplos:
            | numero_1 | numero_2 | resultado |
            | 3        | 3        | 6         |
            | 12       | 12       | 24        |
            | 20       | 20       | 40        |
            | 23       | 20       | 43        |
            | 1250     | 2300     | 3550      |
            | 72       | 31       | 103       |
