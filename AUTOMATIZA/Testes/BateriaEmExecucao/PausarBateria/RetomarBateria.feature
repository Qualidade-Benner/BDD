#language: pt

Funcionalidade: Retomar Bateria de Testes pausada
    Como usuário responsável pela execução dos testes automatizados,
	quero retomar a bateria de testes que está pausada,
	de forma que todos os testes com a situação "Pause" sejam alterados para "Aguardando execução".

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Cenario: Retomar bateria de testes em execução
        Dado uma bateria com testes em execução
        Quando eu solicito a pausa da execução da bateria
        Então devo ver a mensagem "Execução da bateria retomada com sucesso!"
        E os testes pausados devem ter a situação alterada para Aguardando execução.