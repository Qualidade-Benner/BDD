#language: pt

Funcionalidade: Solicitação de atualização de dados bancários
    Como um prestador usuário do Conecta
    Quero fazer atualização dos meus dados bancários
    De forma que estejam corretos e atualizados

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Inserir documento em anexo
        Dado que estou na interface de atualização de dados bancários
        E na tela de inserção de documentos
        Quando eu inserir o documento e for selecionar o tipo dele
        Então deverão ser apresentadas somente opções condizentes com o tipo de documento que alí seria informado

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Atualização de dados bancários com documento em anexo
        Dado que estou na interface de atualização de dados bancários
        E inseri um documento em anexo no processo de atualização das informações
        Quando eu selecionar o botão "Finalizar"
        Então a solicitalção deve ser enviada com sucesso

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Pesquisa de município
        Dado que estou na interface de atualização de dados bancários
        E realizo a pesquisa no campo Município/Estado pagamento
        Quando eu inserir o nome da cidade mesmo sem utilizar acentuação alguma
        Então deverão ser apresentados os resultados de escrita semelhante à que foi inserida

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Envio de solicitação
        Dado que estou na interface de atualização de dados bancários
        E realizo a atualização do meu cadastro
        Quando eu clicar no botão "Finalizar"
        Então a solciitação deve ser enviada com sucesso a operadora