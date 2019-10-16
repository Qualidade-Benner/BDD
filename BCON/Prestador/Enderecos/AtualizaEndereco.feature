#language: pt

Funcionalidade: Solicitação de atualização de endereço
    Como um prestador usuário do Conecta
    Quero fazer uma solicitação de atualização do meu endereço
    De forma que ele permaneça correto e atualizado

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Atualizar endereço do prestador
        Dado que estou na interface de atualização de endereço
        Quando eu preencher todos os campos discriminados como obrigatórios
        Então a solicitação de atualização deverá ser enviada à operadora

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes na operadora
        Dado que estou na interface de atualização de endereço
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        Então os dados vigentes do meu endereço deverão ser apresentados