#language: pt

Funcionalidade: Editar as especialidades cadastradas
    Como um prestador usuário do Conecta
    Quero poder editar as especialidades do meu cadastro
    De forma que elas estejam sempre atualizadas e de acordo com meu cenário real

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Inclusão de nova especialidade
        Dado que estou na interface de atualização de especialidade
        E incluo uma nova especialidade
        E seleciono a opção "Finalizar"
        Então a solicitação de atualização deve ser gerada com sucesso