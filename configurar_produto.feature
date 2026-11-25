language: pt

Funcionalidade: Configurar produto
    Como usuário do sistema
    Eu quero configurar um produto
    Para que eu possa personalizá-lo de acordo com a minha preferência

    Cenário: Configurar produto com sucesso
        Dado que eu estou na página de configuração do produto
        Quando eu selecionar as opções desejadas
        E clicar no botão "Configurar"
        Então o produto deve ser configurado com sucesso

    Cenario: Configurar produto por cor, tamanho e quantidade
        Dado que eu estou na página de configuração do produto
        Quando eu selecionar a cor "Azul"
        E selecionar o tamanho "M"
        E selecionar a quantidade de 10 unidades
        E clicar no botão "Confirmar"
        Então o produto deve ser configurado com sucesso com as opções selecionadas      
      
       Cenário: Configurar venda de produto com quantidade acima do limite de 10 unidades permitido
        Dado que eu estou na página de configuração do produto
        Quando eu selecionar a quantidade de 10 unidades
        E clicar no botão "Confirmar"
        Então uma mensagem de erro deve ser exibida informando que a quantidade selecionada excede o limite permitido

       Cenário: Apagar produtos da lista de compras
        Dado que eu estou na página de configuração do produto
        Quando eu selecionar a opção de apagar produtos da lista de compras
        E clicar no botão "Apagar"
        Então os produtos devem ser removidos da lista de compras com sucesso

        Cenário: Configurar produtos sem selecionar cor, tamanho e quantidade
        Dado que eu estou na página de configuração do produto
        Quando eu não selecionar nenhuma opção de cor, tamanho e quantidade
        E clicar no botão "Confirmar"
        Então uma mensagem de erro deve ser exibida informando que é necessário selecionar pelo menos uma opção de configuração para prosseguir com a configuração do produto

        Cenário: Concluindo a configuração do produto
        Dado que eu estou na página de configuração do produto  
        Quando eu selecionar todas as opções de configuração necessárias 
        E clicar no botão "Confirmar"
        Então o produto deve ser configurado com sucesso e deve ser enviado para o carrinho de compras para finalização da compra