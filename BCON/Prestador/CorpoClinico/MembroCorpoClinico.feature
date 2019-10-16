#language: pt

Funcionalidade: Incluir solicitação de Corpo Clínico
    Como um prestador usuário do Conecta
    Quero incluir solicitações de atualização dos membros do corpo clínico
    De forma que permaneçam atualizadas

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes contendo membros cadastrados
        Dado que estou na interface de atualização de corpo clínico
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        Então deverão ser apresentados os cadastros vigentes dos membros do corpo clínico

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Buscar informações vigentes sem conter membros cadastrados
        Dado que estou na interface de atualização de corpo clínico
        Quando eu selecionar a opção "Buscar informações vigentes na operadora"
        E não houver nenhum membro cadastrado no corpo clínico
        Então deverá ser apresentada a mensagem "Não há membros cadastrados."

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Incluir solicitação
        Dado que estou na interface de atualização de corpo clínico
        Quando eu selecionar a opção "Incluir solicitação"
        Então todos os campos deverão poder ser preenchidos