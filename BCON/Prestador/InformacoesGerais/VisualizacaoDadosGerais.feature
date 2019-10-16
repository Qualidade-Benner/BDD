#language: pt

Funcionalidade: Visualização de atualização de dados gerais
    Como um prestador usuário do Conecta
    Quero visualizar meus dados cadastrais
    De forma que permaneçam corretos e atualizados

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes na operadora
        Dado que estou na interface de atualização de informações gerais
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        Então todos os meus dados vigentes deverão ser apresentados