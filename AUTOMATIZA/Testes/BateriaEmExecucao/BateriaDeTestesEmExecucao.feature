#language: pt

Funcionalidade: Bateria de em Execução
    Como usuário responsável pela execução dos testes automatizados,
	quero selecionar a página Bateria em Execução,
	de forma que eu possa visualizar as informações sobre as baterias em execução e agendadas.
    
    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Baterias Agendadas
        Dado uma bateria de testes que foi agendada,
        Quando acessar a página Bateria em Execução,
        Então devo visualizar o nome da bateria agendada,
        E o dia do agendamento,
        E o horário do agendamento.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Visualizar bateria agendada
        Dado uma bateria de testes que foi agendada,
        Quando eu selecionar a bateria,
        Então devo visualizar as informações do agendamento,
        E o usuario que realizou o agendamento da bateria,
        E os testes que foram selecionados para executar na bateria.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Execução de Baterias Agendadas
        Dado uma bateria de testes que foi agendada,
        Quando der o horário agendado,
        Então a bateria agendada deve ser iniciada automaticamente.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Execução de Baterias Agendadas com Outra Bateria em Execução
        Dado uma bateria de testes que foi agendada
        E que possua uma bateria já em execução,
        Quando der o horário agendado,
        Então a bateria agendada deve aguardar o término da bateria que está em execução ser finalizada para que possa ser iniciada.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Baterias Agendadas para executar uma vez
        Dado uma bateria de testes que foi agendada para executar apenas uma vez,
        Quando der o horário agendado,
        Então a bateria agendada deve ser iniciada automaticamente,
        E não deve mais ser exibida na lista de baterias agendadas.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Baterias Agendadas para executar várias vezes
        Dado uma bateria de testes que foi agendada para executar várias vezes,
        Quando der o horário agendado,
        Então a bateria agendada deve ser iniciada automaticamente,
        E deve continuar sendo exibida na lista de baterias agendadas.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Cancelar Baterias Agendadas
        Dado uma bateria de testes que foi agendada,
        Quando eu solicitar o cancelamento do agendamento,
        Então a bateria agendada deve ser excluída.

    @Execução-Manual @Versão-1.0 @Sistema-Automatiza @Funcionalidade-BateriaAgendada
    Cenario: Alterar Baterias Agendadas
        Dado uma bateria de testes que foi agendada,
        Quando eu solicitar a alteração do agendamento,
        Então a bateria agendada deve ter as informações alteradas,
        E deve ser gravado o usuário que realizou a alteração.