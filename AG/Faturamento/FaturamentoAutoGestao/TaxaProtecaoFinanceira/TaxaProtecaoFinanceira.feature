#language: pt
Funcionalidade: Taxa de Proteção Financeira
	Como usuário responsável pela cobrança de participação financeira e gestão do fundo composto pela taxa de proteção financeira (TPF),
	quero poder limitar a cobrança de participação financeira de cada beneficiário a um valor fixo preestabelecido e que o valor que venha a exceder esse limite seja lançado sob responsabilidade do patrocinador do contrato,
	de forma que o patrocinador do contrato possa utilizar dos recursos desse fundo para cobrir a despesa de participação financeira que exceder o limite permitido aos beneficiários.

	@Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
	Cenário: Faturamento da participação financeira em um contrato que utilize TPF
	&nbsp; &nbsp; &nbsp; <video width="730" height="400" controls><source src="file://mga-fs001/Qualidade/Demonstra%C3%A7%C3%B5es/AG/Faturamento/FaturamentoAutoGestao/DemonstracaoTaxaProtecaoFinanceira.mp4"></video>
        Dado um contrato Autogestão que passou a utilizar uma taxa de proteção financeira (TPF) no período entre 01/05/2019 e 01/05/2020
        E a regra de Pagamento da Participação Financeira que inclui a taxa de proteção financeira seja do período de atendimento seja do dia 01/05/2019 e 01/05/2020
        E a classe gerencial da Participação financeira que incluir a taxa de proteção financeira esteja cadastrado no código folha 0143
        E a regra de Pagamento da Participação Financeira que não inclui a taxa de proteção financeira seja do período de atendimento seja do dia 01/01/1990 e 30/04/2019
        E a classe gerencial da Participação financeira que incluir a taxa de proteção financeira esteja cadastrado no código folha 12340
        E a TPF do contrato tenha um teto de R$ 15.000,00
        E possua beneficiários na mesma família que ainda não tenha saldo devedor de PF
        E teve o custeio mensal abaixo ainda não faturado
        |  Beneficiário |TipoDependente|DataAtendimento|ParticipaçãoFinanceira|Natureza|UtilizacaoIndevida|
        | José da Silva |    Titular   |    30/04/19   |      R$ 8.050,00     |    C   |      R$ 0,00     |
        | José da Silva |    Titular   |    01/05/19   |       R$ 450,00      |    C   |      R$ 0,00     |
        | José da Silva |    Titular   |    02/05/19   |       R$ 350,00      |    C   |      R$ 0,00     |
        | José da Silva |    Titular   |    03/05/19   |     R$ 17.000,00     |    C   |      R$ 0,00     |
        | José da Silva |    Titular   |    03/05/19   |        R$ 0,00       |    C   |     R$ 35,00     |
        | Maria da Silva|    Cônjuge   |    01/05/19   |       R$ 35,00       |    D   |      R$ 0,00     |
        | Maria da Silva|    Cônjuge   |    01/05/19   |       R$ 135,00      |    C   |      R$ 0,00     |
        |Carlos da Silva|     Filho    |    30/04/19   |      R$ 1.815,89     |    C   |      R$ 0,00     |
        Quando processar o faturamento da Participação Financeira
        Então deverá gera uma fatura de custeio mensal para cada beneficiário
        | RespFinanceiro|ParticipaçãoFinanceira|     TipoLancamento    |Natureza|CodigoFolha|SaldoDevedor|
        | José da Silva |      R$ 8.050,00     |Participação Financeira|    C   |    143    |      -     |
        | José da Silva |     R$ 15.000,00     |Participação Financeira|    C   |   14875   |R$ 15.000,00|
        |  Contratante  |      R$ 2.800,00     |   PF do Contratante   |    D   |    143    |      -     |
        | Maria da Silva|       R$ 130,00      |Participação Financeira|    C   |    143    |  R$ 130,00 |
        |Carlos da Silva|      R$ 1.815,89     |Participação Financeira|    C   |   14875   |      -     |
        E gravar as informações da fatura (Número, valor da PF, Natureza, Data e o Tipo da operação) no controle de limitação do custeio mensal
        """
        1 - O cancelamento da rotina de faturamento deverá desfazer as movimentações e as informações do controle de limitação do beneficiário.
        2 - Para contratos que não possuem a TPF, não deverá controlar a limitação do custeio mensal.
        3 - Gerar casos com valor excedente (Para um evento gerar valor excedente, o prestador precisa ter uma categoria que cobra valor excedente e o evento ser maior que o valor calculado).
        4 - Gerar casos com valor excedente de franquia.
        """	
        
    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
    Cenário: Fatura avulsa de participação financeira
        Dado um beneficiário, cujo contrato utilize a taxa de proteção financeira com o teto de R$ 15.000,00
        E ele não possua um saldo devedor de PF
        Quando gerar uma fatura avulsa com módulo
        E seja do tipo utilização
        E no valor de R$ 14.000,00
        Então deverá somar (para natureza de Crédito) ou subtrair (para natureza de Débito) R$ 14.000,00 do controle de limitação do custeio mensal do beneficiário
        E gravar as informações da fatura do beneficiário (Número, valor da PF, Natureza, Data e o Tipo da operação) no controle de limitação do custeio mensal
    
    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
    Cenário: Fatura avulsa de participação financeira de Crédito atingindo o teto da proteção financeira
        Dado um beneficiário, cujo contrato utilize a taxa de proteção financeira com o teto de R$ 15.000,00
        E ele possua um saldo devedor de PF de R$ 14.000,00
        Quando gerar uma fatura avulsa com módulo 
        E seja do tipo utilização 
        E a natureza seja de Crédito
        E no valor de R$ 1.500,00
        Então deverá emitir um alerta de que a fatura avulsa ultrapassará o valor do saldo devedor da PF do beneficiário
        E perguntando se deseja continuar
        E ao continuar, o saldo devedor deverá ultrapassar o teto para R$ 15.500,00

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
    Cenário: Baixa da fatura de participação financeira
        Dado um beneficiário, cujo contrato utilize a taxa de proteção financeira com o teto de R$ 15.000,00
        E tenha faturado a PF no valor de R$ 14.200,00
        Quando baixar a fatura de PF no valor de R$ 14.200,00
        Então deverá subtrair(caso a PF seja de crédito) ou somar (caso a PF seja de débito) R$ 14.200,00 do controle de limitação do custeio mensal do beneficiário
        E gravar as informações da fatura do beneficiário (Número, valor da PF, Natureza, Data e o Tipo da operação) no controle de limitação do custeio mensal
        """
        1 - O estorno do cancelamento também deverá gravar as informações na fatura e desfazer os valores do controle da limitação do custeio mensal do beneficiário.
        2 - Deverá ocorrer tanto para faturas de autogestão quanto para faturas avulsas.
        """

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
    Cenário: Baixa parcial da fatura de participação financeira
        Dado uma fatura de um beneficiário titular, cujo contrato utilize a taxa de proteção financeira com o teto de R$ 15.000,00
        E tenha faturado a PF no valor de R$ 14.200,00 para o beneficiário titular
        E na mesma fatura esteja cobrando o custo assistencial de R$ 117,00
        E na mesma fatura esteja cobrando a Taxa de Proteção Financeira no valor de R$ 34,28
        Quando baixar a fatura de PF no valor de R$ 13.000,00
        Então deverá subtrair(caso a PF seja de crédito) ou somar (caso a PF seja de débito) R$ 12.862,96 do controle de limitação do custeio mensal do beneficiário
        E gravar as informações da fatura do beneficiário (Número, valor da PF, Natureza, Data e o Tipo da operação) no controle de limitação do custeio mensal
        """
        1 - O estorno do cancelamento também deverá gravar as informações na fatura e desfazer os valores do controle da limitação do custeio mensal do beneficiário.
        2 - Deverá ocorrer tanto para faturas de autogestão quanto para faturas avulsas.
        """

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-Faturamento @Solicitacao-STJ
    Cenário: Cancelamento da fatura 130.Autogestão de participação financeira de Crédito
        Dado um beneficiário, cujo contrato utilize a taxa de proteção financeira com o teto de R$ 15.000,00
        E tenha faturado a PF no valor de R$ 14.200,00
        Quando cancelar a fatura de PF 
        Então deverá subtrair (natureza de crédito) ou somar (natureza de débito) R$ 14.200,00 do controle de limitação do custeio mensal do beneficiário
        E gravar as informações da fatura do beneficiário (Número, valor da PF, Natureza, Data e o Tipo da operação) no controle de limitação do custeio mensal
        """
        1 - O estorno do cancelamento também deverá gravar as informações na fatura e desfazer os valores do controle da limitação do custeio mensal do beneficiário.
        2 - Deverá ocorrer tanto para faturas de autogestão quanto para faturas avulsas.
        """