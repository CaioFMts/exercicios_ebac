language: pt

Funcionalidade: Login de usuário
  Como um usuário registrado como usuarioebacclickbait.com  e senha 123456
  Eu quero fazer login no sistema
  Para acessar minhas informações pessoais, compras e produtos comprados

  Cenário: Login bem-sucedido
    Dado que o usuário está na página de login
    Quando o usuário insere o email "usuarioebacclickbait.com" e a senha "123456"
    E clica no botão de login
    Então o usuário deve ser redirecionado para a página inicial do sistema 

    Cenário: Login com credenciais inválidas
    Dado que o usuário está na página de login
    Quando o usuário insere o email "usuarioebacclickbait.com" e a senha "senhaerrada"
    E clica no botão de login
    Então o usuário deve ver uma mensagem de alerta "Usuário ou senha inválidos. Por favor, tente novamente."

    Cenário: Login com campos vazios
    Dado que o usuário está na página de login 
    Quando o usuário deixa os campos de email e senha vazios
    E clica no botão de login
    Então o usuário deve ver uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios."

    Cenário: Login bem sucedido com redirecionamento para o checkout
    Dado que o usuário está na página de login
    Quando o usuário insere o email "usuarioebacclickbait.com" e a senha "123456"
    E clica no botão de login
    Então o usuário deve ser redirecionado para a página de checkout do sistema
