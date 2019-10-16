#language: pt

Funcionalidade: Parar Bateria em Execução
    Como usuário responsável pela execução dos testes automatizados,
	quero parar a bateria de testes que está em execução,
	de forma que todos os testes sejam finalizados com a situação "Cancelado".

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Cenario: Cancelar bateria em execução
        Dado uma bateria com testes em execução
        Quando eu solicito o cancelamento da execução da bateria
        Então eu devo ver a mensagem "Deseja realmente cancelar a execução?"

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Cenario: Não confirmar o cancelamento da bateria em execução
        Dado o cancelamento de uma bateria de testes em execução
        Quando eu não confirmo o cancelamento da bateria
        Então a execução dos testes devem continuar sem nenhuma alteração
    
    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Cenario: Confirmar o cancelamento da bateria em execução
        Dado o cancelamento de uma bateria de testes em execução
        Quando eu confirmo o cancelamento da bateria
        Então a bateria de testes deve ser cancelada
        E devo ser direcionado para a página Baterias de Testes