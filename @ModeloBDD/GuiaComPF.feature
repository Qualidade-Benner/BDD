#language: pt
Funcionalidade: Cálculo da Participação financeira do tipo fixa
  Como responsável pela conferência das guias de pagamento,
  quero obter o valor da participação financeira,
  de forma que seja possível cobrar a coparticipação dos beneficiários.

  @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-PEG @Solicitacao-STJ
  Esquema do Cenário: Validar o cálculo da Participação Financeira do tipo Fixa na análise da conta - Nível Contrato
    Dado a entrada da conta de consulta que possui uma PF fixa no contrato
    E o beneficiário possua cobertura para o evento realizado
    E o evento foi realizado na data <DataAtendimento>
    E o <GrupoParticipacaoFin> possui a vigência do dia <DataInicial> até <DataFinal>
    Quando o peg possuir valor pago
    Então deverá ser cobrado do beneficiário <PercentualPFCobrado> em cima do valor de pagamento do procedimento.

    Exemplos: 
    |DATAATENDIMENTO|GRUPOPARTICIPACAOFIN|DATAINICIAL| DATAFINAL|PERCENTUALPFCOBRADO|
    |   30/04/2019  |          -         |     -     |     -    |         -         |
    |   01/05/2019  |    Consultas 10%   | 01/05/2019|10/05/2019|        10%        |
    |   10/05/2019  |    Consultas 10%   | 01/05/2019|10/05/2019|        10%        |
    |   11/05/2019  |          -         |     -     |     -    |         -         |
    |   12/05/2019  |    Consultas 20%   | 12/05/2019|20/05/2019|        20%        |
    |   20/05/2019  |    Consultas 20%   | 12/05/2019|20/05/2019|        20%        |

  @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-PEG @Solicitacao-STJ
  Esquema do Cenário: Validar o cálculo da Participação Financeira do tipo Fixa na análise da conta - Nível Família
    Dado a entrada da conta de consulta que possui uma PF fixa no contrato e na família
    E o beneficiário possua cobertura para o evento realizado
    E o evento foi realizado na data <DataAtendimento>
    E o <GrupoParticipacao> possui a vigência do dia <DataInicial> até <DataFinal>
    Quando o peg possuir valor pago
    Então deverá ser cobrado do beneficiário <PercentualPFCobrado> em cima do valor de pagamento do procedimento
    E não deverá ser cobrado do beneficiário o percentual de PF definido no contrato do beneficiário mesmo que o atendimento tenha sido realizado na mesma data.

    Exemplos:
    |DATAATENDIMENTO|GRUPOPARTICIPACAOFIN|DATAINICIAL| DATAFINAL|PERCENTUALPFCOBRADO|
    |   30/04/2019  |          -         |     -     |     -    |         -         |
    |   01/05/2019  |    Consultas 15%   | 01/05/2019|10/05/2019|        15%        |
    |   10/05/2019  |    Consultas 15%   | 01/05/2019|10/05/2019|        15%        |
    |   11/05/2019  |          -         |     -     |     -    |         -         |
    |   12/05/2019  |    Consultas 30%   | 12/05/2019|20/05/2019|        30%        |
    |   20/05/2019  |    Consultas 30%   | 12/05/2019|20/05/2019|        30%        |

  @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-PEG @Solicitacao-STJ
  Esquema do Cenário: Validar o cálculo da Participação Financeira do tipo Fixa na análise da conta - Nível Beneficiário
    Dado a entrada da conta de consulta que possui uma PF fixa no contrato, na família e no beneficiário
    E o beneficiário possua cobertura para o evento realizado
    E o evento foi realizado na data <DataAtendimento>
    E o <GrupoParticipacaoFin> possui a vigência do dia <DataInicial> até <DataFinal>
    Quando o peg possuir valor pago
    Então deverá ser cobrado do beneficiário <PercentualPFCobrado> em cima do valor de pagamento do procedimento
    E não deverá ser cobrado do beneficiário o percentual de PF definido no contrato ou na família do beneficiário mesmo que o atendimento tenha sido realizado na mesma data.

    Exemplos: 
    |DATAATENDIMENTO|GRUPOPARTICIPACAOFIN|DATAINICIAL| DATAFINAL|PERCENTUALPFCOBRADO|
    |   30/04/2019  |          -         |     -     |     -    |         -         |
    |   01/05/2019  |    Consultas 20%   | 01/05/2019|10/05/2019|        20%        |
    |   10/05/2019  |    Consultas 20%   | 01/05/2019|10/05/2019|        20%        |
    |   11/05/2019  |          -         |     -     |     -    |         -         |
    |   12/05/2019  |    Consultas 40%   | 12/05/2019|20/05/2019|        40%        |
    |   20/05/2019  |    Consultas 40%   | 12/05/2019|20/05/2019|        40%        |
 