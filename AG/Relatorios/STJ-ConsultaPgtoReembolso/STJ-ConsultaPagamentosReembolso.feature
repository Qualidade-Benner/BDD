#language: pt
Funcionalidade: Consulta simples das informações dos pagamentos dos credenciados ou reembolso dos beneficiários
    Como um usuário no departamento SOF,
    quero tornar mais fácil as consultas sobre pagamentos de determinados credenciados/servidores,
    de forma que seja possível realizar uma consulta simples das informações quando os mesmos entram em contato com a SOF.

    @Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-STJ @Funcionalidade-Relatorio  
    Esquema do Cenário: Tela de busca da Consulta de Pagamentos (Credenciado ou beneficiário)
    &nbsp; &nbsp; &nbsp; <video width="590" height="400" controls><source src="file://mga-fs001/Qualidade/Demonstra%C3%A7%C3%B5es/AG/Relatorios/STJ/DemonstracaoConsultaPgtoReembolso.mp4"></video>
        Dado uma pessoa, seja ela um credenciado ou beneficiário, que deseja obter informações sobre seus pagamentos
        Quando informo a pessoa <Pessoa>, tanto pelo seu número ou CPF/CNPJ ou Nome
        E informo o(s) identificador(es) de pagamento <IdentificadoresPagamento>
        E informo a <DataInicial> e <DataFinal>
        E realizo uma busca
        Então deverá listar as informações dos pagamentos conforme o filtro 
        E se não tiver registros, apresentar a mensagem "Nenhum registro encontrado com os filtros informados."
        
        Exemplos:
            |       Pessoa       | IdentificadoresPagamento |DataInicial| DataFinal|
            |Hospital MMurai LTDA|           Nulo           | 01/01/2019|31/12/2019|
            |   85861800000150   |     291/2019;292/2019    | 10/07/2019|11/08/2019|
            |   Michelee A. M.   |           Nulo           | 01/01/2018|31/12/2018|
            |     51323293060    |111/2019;222/2019;333/2019| 01/07/2019|01/08/2019|
    
    @Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-STJ @Funcionalidade-Relatorio
    Esquema do Cenário: Validação das informações da Consulta de Pagamentos de Credenciado
        #Caminho: [Controle Financeiro] > botões do módulo "Consulta Pagamentos/Reembolso"
        Dado um prestador credenciado pela operadora que deseja obter informações sobre seus pagamentos
        Quando realizo uma busca
        Então deverá listar as informações do pagamento de acordo com a data de recebimento das guias
        E o <ValorPago> deverá vir preenchido somente se a <Situação> da guia estiver faturada
        E o <Empenho> deverá vir preenchido "Recurso Próprio" se não for do regime orçamentário
        E a <DataArquivo> deverá vir preenchido com a data de geração do arquivo do tipo Remessa
        E o <Telefone> deverá vir preenchido com o Ramal cadastrado no <UsuárioLiberaçãoPagto>
        E apresentar outro grid abaixo com os Totais de valor pago e baixado de acordo com <Identificador>

        Exemplos:
            |Identificador|PEG|  Situação |   ValorPago  |         TipoPEG         |FilialProcessamento|UsuárioLiberaçãoPagto|Telefone|DataVencimentoDocumento|DataArquivo| DataBaixa| ValorBaixado |
            |  1007/2019  |348|  Faturado |R$2.012.200,23|TISS-RESUMO DE INTERNAÇÃO|     Filial PR     |       Michelee      |  1720  |       11/07/2019      | 11/06/2019|11/07/2019|R$1.900.000,00|
            |     Nulo    |349|Conferência|  R$1.000,00  |      TISS-CONSULTA      |     Filial PR     |       Michelee      |  1720  |          Nulo         |    Nulo   |   Nulo   |    R$0,00    |
            |  1007/2019  |347|  Faturado |  R$17.000,00 |       TISS-SPSADT       |     Filial PR     |       Michelee      |  1720  |       11/07/2019      | 11/06/2019|11/07/2019|  R$16.500,00 |

    @Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-STJ @Funcionalidade-Relatorio
    Esquema do Cenário: Validação das informações da Consulta de Pagamentos de Beneficiário
        #Caminho: [Controle Financeiro] > botões do módulo "Consulta Pagamentos/Reembolso"
        Dado um beneficiário que deseja obter informações sobre seus pagamentos
        Quando realizo uma busca
        Então deverá listar as informações do pagamento de acordo com a data de recebimento do reembolso
        E listar os registros que têm <NumeroProtocolo> preenchido
        E a <DataProtocolo> e o <NumeroProtocolo> seja do protocolo de entrega do documento
        E o <ValorPago> deverá vir preenchido somente se a <Situação> da guia estiver faturada
        E o <Empenho> deverá vir preenchido "Recurso Próprio" se não for do regime orçamentário
        E a <DataArquivo> deverá vir preenchido com a data de geração do arquivo do tipo Remessa
        E o <Telefone> deverá vir preenchido com o Ramal cadastrado no <UsuárioLiberaçãoPagto>
        E o <ValorBaixado> deverá vir o valor baixado da fatura
        E apresentar outro grid abaixo com os Totais de valor pago e baixado de acordo com <Identificador>
        E o campo Valor Baixado da grid de totais deverá vir a soma dos valores baixados das faturas
        
        Exemplos:
            |DataProtocolo|NumeroProtocolo|Identificador|PEG|  Situação |   ValorPago  | TipoPEG |FilialProcessamento|UsuárioLiberaçãoPagto|Telefone|DataVencimentoDocumento|DataArquivo| DataBaixa| ValorBaixado |
            |  02/01/2019 |       5       |  1007/2019  |348|  Faturado |R$2.012.200,23|REEMBOLSO|     Filial PR     |       Michelee      |  1720  |       11/07/2019      | 11/06/2019|11/07/2019|R$1.900.000,00|
            |  02/01/2019 |       5       |     Nulo    |349|Conferência|  R$1.000,00  |REEMBOLSO|     Filial PR     |       Michelee      |  1720  |          Nulo         |    Nulo   |   Nulo   |    R$0,00    |
            |  02/01/2019 |       5       |  1007/2019  |347|  Faturado |  R$17.000,00 |REEMBOLSO|     Filial PR     |       Michelee      |  1720  |       11/07/2019      | 11/06/2019|11/07/2019|  R$16.500,00 |
