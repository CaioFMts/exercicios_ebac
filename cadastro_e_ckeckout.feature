language: pt

Funcionalidade: Cadastro e checkout
    Como usuario de sistema
    Eu quero realizar cadastro no sistema e prosseguir para o checkout
    Para que eu possa finalizar a compra do produto desejado

    Cenário: Cadastro de dados no sistema
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher os campos obrigatórios com informações válidas
        E clicar no botão "Cadastrar"
        Então o cadastro deve ser realizado com sucesso e uma mensagem de confirmação deve ser exibida

        Cenário: Cadastro de dados com informações incompletas (em branco)
        Dado que eu estou na página de cadastro do sistema
        Quando eu deixar algum campo obrigatório em branco  
        E clicar no botão "Cadastrar"
        Então uma mensagem de "Erro no cadastro! Preencha todos os campos obrigatórios." deve ser exibida, indicando que o cadastro não foi realizado com sucesso. E indicar quais campos faltam serem preenchidos com uma mensagem de "Campo obrigatório" e "*" ao lado do campo que não foi preenchido.

        Cenário: Cadastro de dados com formato inválido
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher algum campo obrigatório com informações em formato inválido (ex: email sem @)
        E clicar no botão "Cadastrar"
        Então uma mensagem de "Erro no cadastro! Email utilizado é invalido ou incorreto. Por favor, utilize um email válido." deve ser exibida, indicando que o cadastro não foi realizado com sucesso.

        Cenário: Cadastro de dados com email já cadastrado
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher o campo de email com um email que já está cadastrado no sistema
        E clicar no botão "Cadastrar"
        Então uma mensagem de "Erro no cadastro! Email já cadastrado. Por favor, utilize um email diferente." deve ser exibida, indicando que o cadastro não foi realizado com sucesso.
        
        Cenário: Cadastro de dados efetuado com sucesso e prosseguir para o checkout
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher todos os campos obrigatórios com informações válidas
        E clicar no botão "Cadastrar"
        Então o cadastro deve ser realizado com sucesso e uma mensagem de confirmação deve ser exibida, e eu devo ser redirecionado para a página de checkout para finalizar a compra do produto desejado.

        Cenário: Cadastro de dados efetuado com sucesso e prosseguir para o checkout com informações de endereço
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher todos os campos obrigatórios com informações válidas, incluindo informações de endereço
        E clicar no botão "Cadastrar"
        Então o cadastro deve ser realizado com sucesso e uma mensagem de confirmação deve ser exibida, e eu devo ser redirecionado para a página de checkout para finalizar a compra do produto desejado, com as informações de endereço preenchidas corretamente.

        Esquema do Cenário: Cadastro de multiplos dados no sistema
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher os campos obrigatórios com informações válidas como <email>, <senha>, <nome>, <sobrenome>, <endereço>, <telefone>
        E clicar no botão "Cadastrar"
        Então o cadastro deve ser realizado com sucesso e uma mensagem de confirmação deve ser exibida

        Exemplos:
            | email                | senha     | nome   | sobrenome | endereço          | telefone      | Mensagem de confirmação |
            | john.doe@example.com | password123 | John | Doe | 123 Main St | 555-1234 | Cadastro realizado com sucesso! |
            | jane.smith@example.com | password456 | Jane | Smith | 456 Oak Ave | 555-5678 | Cadastro realizado com sucesso! |
            | bob.johnson@example.com | password789 | Bob | Johnson | 789 Pine Rd | 555-9012 | Cadastro realizado com sucesso! |

       
        Esquema do Cenário: Cadastro com informações inválidas no sistema
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher os campos obrigatórios com informações inválidas como <email>, <senha>, <nome>, <sobrenome>, <endereço>, <telefone> 
        E clicar no botão "Cadastrar"
        Então uma mensagem de erro deverá ser exibida como "Erro no cadastro! Por favor, utilize um email válido." indicando que o cadastro não foi realizado com sucesso.

        Exemplos:
            | email                | senha     | nome   | sobrenome | endereço          | telefone      | Mensagem de erro |
            | john.doeexample.com  | password123 | John | Doe | 123 Main St | 555-1234 | Erro no cadastro! Por favor, utilize um email válido. |
            | jane.smith@.com      | password456 | Jane | Smith | 456 Oak Ave | 555-5678 | Erro no cadastro! Por favor, utilize um email válido. |
            | bob.johnson@example  | password789 | Bob  | Johnson| 789 Pine Rd| 555-9012 | Erro no cadastro! Por favor, utilize um email válido. |  
            
        Esquema do Cenário: Cadastro com campos obrigatórios em branco no sistema
        Dado que eu estou na página de cadastro do sistema
        Quando eu deixar algum campo obrigatório como <email>, <senha>, <nome>, <sobrenome>, <endereço>, <telefone> em branco
        E clicar no botão "Cadastrar"
        Então uma mensagem de erro deverá ser exibida como "Erro no cadastro! Por favor, preencha todos os campos obrigatórios." indicando que o cadastro não foi realizado com sucesso

        Exemplos:
            | email                | senha     | nome   | sobrenome | endereço          | telefone      | Mensagem de erro |
            |                      | password123 | John | Doe | 123 Main St | 555-1234 | Erro no cadastro! Por favor, preencha todos os campos obrigatórios. |
            | jane.smith@example.com |           | Jane | Smith | 456 Oak Ave | 555-5678 | Erro no cadastro! Por favor, preencha todos os campos obrigatórios. |
            | bob.johnson@example.com | password789 | Bob | Johnson | 789 Pine Rd |           | Erro no cadastro! Por favor, preencha todos os campos obrigatórios. |

        Esquema do Cenário: Cadastro com email já cadastrado no sistema
        Dado que eu estou na página de cadastro do sistema
        Quando eu preencher o campo de email com um email que já está cadastrado no sistema <email> e <senha>
        E clicar no botão "Cadastrar"
        Então uma mensagem de erro deverá ser exibida como "Erro no cadastro! Email já cadastrado. Por favor, utilize um email diferente." indicando que o cadastro não foi realizado com sucesso

        Exemplos:
            | email                | senha     | Mensagem de erro |
            | john.doe@example.com | password123 | Erro no cadastro! Email já cadastrado. Por favor, utilize um email diferente. |
            | jane.smith@example.com | password456 | Erro no cadastro! Email já cadastrado. Por favor, utilize um email diferente. |
            | bob.johnson@example.com | password789 | Erro no cadastro! Email já cadastrado. Por favor, utilize um email diferente. |


        Esquema do Cenário: Login bem sucedido e prosseguir para o checkout
        Dado que eu estou na página de login do sistema
        Quando eu preencher os campos obrigatórios com informações válidas como <email> e <senha>
        E clicar no botão "Login"
        Então o login deve ser realizado com sucesso e uma mensagem como "Login realizado com sucesso! Bem vindo, <nome>!", e eu devo ser redirecionado para a página de checkout para finalizar a compra do produto desejado.

        Exemplos:
            | email                | senha     | nome   | Mensagem de confirmação |
            | john.doe@example.com | password123 | John | Login realizado com sucesso! Bem vindo, John! |
            | jane.smith@example.com | password456 | Jane | Login realizado com sucesso! Bem vindo, Jane! |
            | bob.johnson@example.com | password789 | Bob | Login realizado com sucesso! Bem vindo, Bob! |