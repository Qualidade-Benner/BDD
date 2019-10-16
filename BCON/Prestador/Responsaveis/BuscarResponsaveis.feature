#language: pt

Funcionalidade: Apresentar responsáveis vigentes na operadora
    Como um prestador usuário do Conecta
    Quero buscar na operadora as informações dos responsáveis cadastrados
    De forma que sejam apresentadas as informações vigentes dos mesmos

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes na operadora
        Dado que estou na interface de atualização de responsáveis
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        Então serão apresentados os cadastros vigentes dos Responsáveis
    
    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes na operadora
        Dado que estou na interface de atualização de responsáveis
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        E não houver nenhum responsável cadastrado
        Então deverá ser apresentada a mensagem "Não há responsáveis cadastrados."