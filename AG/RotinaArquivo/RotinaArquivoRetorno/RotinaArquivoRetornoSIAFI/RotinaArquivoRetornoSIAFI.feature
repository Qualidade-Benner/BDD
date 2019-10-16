#language: pt
Funcionalidade: Gravação das informações dos retornos dos documentos hábeis quando baixados
    Como um usuário no departamento SOF,
    quero que o sistema grave o retorno das informações do SIAFI no documento,
    de forma que seja possível utilizar as informações para geração de relatórios e/ou buscas via treeview.

    #NÃO ESQUECER DE TESTAR A ROTINA ARQUIVO DE RETORNO SEM A INTEGRAÇÃO SIAFI

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-RotinaArquivoRetorno @Solicitacao-STJ
    Cenário: Processo da verificação 7
        #Caminho: [Adm] > Verificações
        Dado que eu precise fazer integração da view SIAFI
        Quando processar a verificação 7
        Então deverá incluir os campos "DATAPAGAMENTOSIAFI", "NUMERONOTASIAFI", "NUMEROORDEMBANCARIASIAFI", "TIPOTRIBUTOSIAFI", "VALORBASECALCULOSIAFI", "ALIQUOTASIAFI", "VALORTRIBUTOSIAFI", "CODIGORECEITASIAFI" e "NUMEROTRIBUTOSIAFI"

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-RotinaArquivoRetorno @Solicitacao-STJ
	Esquema do Cenário: Configuração da ligação dos campos da view com os campos do sistema
        #[Controle Financeiro] > Tabelas > SIAFI > Integração view > De/Para
        Dado tenha processado a verificação 7
        Quando cadastrar a ligação do campo da view <CampoView> com o campo do sistema <CampoSistema>
        E informar o regime de pagamento <RegimePagamento>
        E informar de qual view <View>
        E salvar
        Então deverá salvar com sucesso

        Exemplos:
            |      CampoView     |      CampoSistema      |RegimePagamento|        View        |
            |   cpf_cnpj_credor  |         CNPJCPF        |     Ambos     |View SIAFI pagamento|
            |dt_emissao_doc_siafi|        BAIXADATA       |     Ambos     |View SIAFI pagamento|
            |    num_doc_habil   |  NUMERODOCUMENTOHABIL  |     Ambos     |View SIAFI pagamento|
            |    vlr_doc_siafi   |       BAIXAVALOR       |     Ambos     |View SIAFI pagamento|
            |  num_nota_sistema  |     NUMERONOTASIAFI    |     Ambos     |View SIAFI pagamento|
            |dt_emissao_doc_siafi|   DATAPAGAMENTOSIAFI   |     Ambos     |View SIAFI pagamento|
            |    num_doc_siafi   |NUMEROORDEMBANCARIASIAFI|     Ambos     |View SIAFI pagamento|
            |    num_processo    | IDENTIFICADORPAGAMENTO |     Ambos     |View SIAFI pagamento|
            |    num_doc_habil   |  NUMERODOCUMENTOHABIL  |     Ambos     | View SIAFI tributos|
            |     cod_receita    |   CODIGORECEITASIAFI   |     Ambos     | View SIAFI tributos|
            |  vlr_base_calculo  |  VALORBASECALCULOSIAFI |     Ambos     | View SIAFI tributos|
            |  num_perc_aliquota |      ALIQUOTASIAFI     |     Ambos     | View SIAFI tributos|
            |   tipo_doc_habil   |    TIPOTRIBUTOSIAFI    |     Ambos     | View SIAFI tributos|
            |    vlr_doc_siafi   |    VALORTRIBUTOSIAFI   |     Ambos     | View SIAFI tributos|
            |    num_doc_siafi   |   NUMEROTRIBUTOSIAFI   |     Ambos     | View SIAFI tributos|
    
    #Não é possível testar com a view, somente fazendo mock na base de teste(peça ajuda de um programador).
    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-RotinaArquivoRetorno @Solicitacao-STJ
    Esquema do Cenário: Processo da rotina arquivo de retorno com integração SIAFI com sucesso
    &nbsp; &nbsp; &nbsp; <video width="590" height="400" controls><source src="file://mga-fs001/Qualidade/Demonstra%C3%A7%C3%B5es/AG/RotinaArquivo/RotinaArquivoRetorno/DemonstracaoRotinaArquivoSIAFI.mp4"></video>
        Dado que eu tenha parametrizado corretamente todos os campos da view SIAFI e com os do sistema 
        E um documento <Documento> na situação <Situacao> 
        E possuem <IdentificadorPagamento>
        E as faturas do documento do tipo <TipoDeFaturamento>
        E possuem a retenção de imposto <RetencaoImposto> 
        E possuem registros de baixa na view da integração com SIAFI <RegistroViewSIAFI>
        Quando crio uma rotina arquivo de retorno com integração SIAFI
        E processo a rotina
        Então deverá gerar um arquivo-texto no campo Arquivo Retorno conforme o modelo de retorno
        E relacionar os documentos encontrados na integração SIAFI de acordo com o identificador de pagamento e os parâmetros informados na rotina
        E nos documentos preencher a data baixa e o valor da baixa de acordo com os campos da view e, os mesmos, devidamente ligados aos campos do sistema
        E baixar as faturas dos documentos
        E abaixo dos documentos deverá gravar as informações do retorno do SIAFI com a Data do Pagamento, o Número Doc. Hábil, o Número da nota de sistema e o Número da ordem bancária
        E gravar as informações para cada tributo, qual o Tipo Tributo, o Código receita, o Valor base, a Alíquota, o Valor tributo e o Número da ordem bancária

        Exemplos:
            |Documento|Situacao|IdentificadorPagamento|   TipoDeFaturamento   |       RetencaoImposto      |RegistroViewSIAFI|
            |   555   | Aberta |     AMHO-555/2019    |  Pagamento Prestador  |IR, CSLL, PIS/Pasep e Cofins|       Sim       |
            |   777   | Aberta |     AMHO-777/2019    |  Pagamento Prestador  |           Isento           |       Sim       |
            |   333   | Aberta |     AMHO-333/2019    |  Pagamento Prestador  |          IR e ISS          |       Sim       |
            |   444   | Aberta |     AMHO-444/2019    |Reembolso Beneficiários|           Isento           |       Sim       |
        

    @Execucao-Manual @Prioridade-Alta @Versao-351 @Sistema-Kernel @Funcionalidade-RotinaArquivoRetorno @Solicitacao-STJ
    Esquema do Cenário: Processo da rotina arquivo de retorno com integração SIAFI que não encontra documentos
        Dado um documento <Documento> na situação <Situacao>
        E possuem <IdentificadorPagamento>
        E as faturas do documento do tipo <TipoDeFaturamento>
        E possuem a retenção de imposto <RetencaoImposto> 
        E possuem registros de baixa na view da integração com SIAFI <RegistroViewSIAFI>
        Quando crio uma rotina arquivo de retorno com integração SIAFI
        E processo a rotina
        Então não deverá encontrar documentos para processar
        
        Exemplos:
            |Documento|Situacao|IdentificadorPagamento| TipoDeFaturamento |       RetencaoImposto      |RegistroViewSIAFI|
            |   999   | Aberta |     AMHO-555/2019    |Pagamento Prestador|IR, CSLL, PIS/Pasep e Cofins|       Não       |
            |   888   | Baixada|     AMHO-777/2019    |Pagamento Prestador|           Isento           |       Sim       |
            |   111   | Aberta |           -          |Pagamento Prestador|           Isento           |       Sim       |