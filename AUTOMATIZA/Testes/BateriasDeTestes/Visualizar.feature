#language: pt

Funcionalidade: Baterias de Testes
    Como usuário responsável pela execução dos testes automatizados,
	quero visualizar os detalhes das baterias de testes,
	de forma que eu possa visualizar os logs e analisar as situações das baterias.

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaDeTestesEmExecucao
    Cenario: Baterias de testes cancelada
        Dado a confirmação do cancelamento de uma bateria de testes
        Quando eu visualizo as informações da bateria cancelada
        Então devo ver a situação "Cancelado"
        E devo ver o usuario que fez o cancelamento assim como a data e hora do cancelamento.

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaDeTestesEmExecucao
    Cenario: Baterias de testes pausada
        Dado uma bateria de testes que foi pausada e retomada
        Quando eu visualizo as informações da bateria pausada
        Então devo ver o usuario que pausou a bateria assim como a data e hora da pausa
        E devo ver o usuário que retomou a execução da bateria assim como a data e hora da retomada.