@execução-Manual @Sistema-Kernel
Esquema do Cenário: Realizar faturamento de PEGs
    #Caminho: [Processamento de Contas] > Faturamento > Competências > Rotina Financeira de pagamento > Parâmetros e PEG's
    Dado que se tenha uma ou mais contas liberadas para pagamento
    Quando Agendar a conta em uma rotina de pagamento
    E processar essa competência de pagamento com a forma de faturamento <FormaFaturamento>
    Então a conta deve ser faturada

    Exemplos: 
|    FormaFaturamento   |
| Pagamento Prestadores |
|Calendário de pagamento|
|     Número do PEG     |
|    Data recebimento   |
