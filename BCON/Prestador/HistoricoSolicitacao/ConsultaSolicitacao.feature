#language: pt

Funcionalidade: Consulta de solicitações
    Como um prestador usuário do Conecta
    Quero consultar as solicitações de atualização que foram feitas
    De forma que sejam listadas todas as solicitações feitas em um faixa de tempo

    @Execucao-Manual @Prioridade-Media @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Cadastro
    Cenário: Consultar solicitações de atualização
        Dado que estou na interface do Conecta
        E seleciono a opção "Atualização Cadastral na Operadora"
        Quando eu selecionar a opção "Histórico de solicitação de atualização"
        E informar a faixa de tempo a ser consultada
        Então deverão ser apresentadas todas as solicitações de atualização que foram feitas no período de tempo informado