#language: pt

Funcionalidade: Pausar Bateria em Execução
    Como usuário responsável pela execução dos testes automatizados,
	quero pausar a bateria de testes que está em execução,
	de forma que todos os testes com a situação "Aguardando execução" sejam alterados para "Pause", e aqueles que estiverem com a situação "Executando" devem continuar até o término do teste.

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Cenario: Pausar bateria em execução
        Dado uma bateria com testes em execução
        Quando eu solicito a pausa da execução da bateria
        Então devo ver a mensagem "Bateria de testes pausada com sucesso. Os testes em andamento continuarão executando!"
        E o teste em execução deve continuar rodando até o seu término e os testes que estiverem Aguardando execução devem ser pausados.