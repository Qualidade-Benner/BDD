#language: pt

Funcionalidade: Agendar execução da Bateria de Testes
    Como usuário responsável pela execução dos testes automatizados,
	quero agendar a execução dos testes automatizados,
	de forma que eu possa executar o testes automatizados em horários pré-definidos.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-SelecaoDeTestes
    Cenario: Agendar execução dos testes selecionados
        Dado a seleção de testes a serem executados,
        Quando solicitar o agendamento da bateria,
        Então devo informar um nome para a bateria agendada,
        E informar a periodicidade da execução,
        E o horário que a execução será iniciada.