#language: pt

Funcionalidade: Visualizar as informações cadastrais na operadora
    Como um prestador usuário do Conecta
    Quero visualizar minhas informações cadastrais na operadora
    De forma que sejam apresentadas as informações vigentes

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Apresentar informações cadastrais em abas
        Dado que estou na interface de atualização cadastral na operadora
        Quando eu selecionar a opção "Visualizar informações na operadora"
        Então todas as informações vigentes na operadora devem ser apresentadas
        E devem estar organizadas em suas respectivas abas