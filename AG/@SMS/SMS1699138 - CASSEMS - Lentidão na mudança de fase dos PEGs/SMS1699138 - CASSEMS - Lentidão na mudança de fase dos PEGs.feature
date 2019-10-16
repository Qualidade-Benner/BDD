#language: pt
#1699138 - CASSEMS - LENTIDÃO NA MUDANÇA DE FASE DOS PEGS
Funcionalidade: Mudança de fase de PEGs 
    Como usuário do sistema
    Quero que seja possível mudar os pegs de fase
    De forma que não demore tanto a ação ser concluída

    @Execucao-Manual @Prioridade-Baixa @Versao3.53 @Sistema-Kernel @Funcionalidade-MudançadeFasedoPEG @Solicitacao-CASSEMS 
    Cenário: Mudar um PEG de fase sem lentidão
    #[Processamento de Contas] > Competências de PEG > Filiais > Em Digitação
        Dado que tenha um peg digitado 
        Quando o usuário tentar mudar de fase
        Então o a tela de processamento será exibida 
        E a mudança de fase deve ser realizada com sucesso em no máximo 5 segundos