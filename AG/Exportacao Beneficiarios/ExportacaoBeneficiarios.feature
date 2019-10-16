#language: pt
Funcionalidade: Através de uma rotina realizar a exportação de beneficiários 
    Como usuário do sistema
    Quero conseguir exportar os beneficiários da base em um arquivo 
    De forma que seja possível montar um leiaute personalizavel para esse arquivo

    @Execucao-Manual @Prioridade-Baixa @Versao3.51 @Sistema-Kernel @Funcionalidade-ExportacaoBeneficiarios @Solicitacao-Benner 
    Cenário: Executar verificação 17
    #[ADM] > Verificações > Buscar pela 17
    #Campos para exportação do Layout, são populados através da SIS_VERIFICACAO de Código 17;
        Dado que estou na rotina de exportação de beneficiário 
        Quando o usuário incluir um novo registro
        E selecionar um "Tipo de registro"
        E informar os campos conforme desejado
        E deve-se executar a verificação 17
        Então os campos do registro da exportação devem ser populados

    @Execucao-Manual @Prioridade-Baixa @Versao3.51 @Sistema-Kernel @Funcionalidade-ExportacaoBeneficiarios @Solicitacao-Benner
    Cenário: Exportação de beneficiários utilizando busca por "Grupo de contrato"
    #[Beneficiários] > Rotinas > Exportações de beneficiários
        Dado que o usuário queira exportar os beneficiários contidos na base
        Quando definir a busca de beneficiários por "Grupo de contratos"
        E processar a rotina
        Então deverá ser gerado um arquivo .txt com os beneficiários pertencentes ao "Grupo de contratos"

   @Execucao-Manual @Prioridade-Baixa @Versao3.51 @Sistema-Kernel @Funcionalidade-ExportacaoBeneficiarios @Solicitacao-Benner
    Cenário: Exportação de beneficiários utilizando busca por "Contratos"
    #[Beneficiários] > Rotinas > Exportações de beneficiários
        Dado que o usuário queira exportar os beneficiários contidos na base
        Quando definir a busca de beneficiários por "Contratos"
        E processar a rotina
        Então deverá ser gerado um arquivo .txt com os beneficiários pertencentes ao "Contratos"

    @Execucao-Manual @Prioridade-Baixa @Versao3.51 @Sistema-Kernel @Funcionalidade-ExportacaoBeneficiarios @Solicitacao-Benner
    Cenário: Exportação de beneficiários utilizando busca por "Famílias"
    #[Beneficiários] > Rotinas > Exportações de beneficiários
        Dado que o usuário queira exportar os beneficiários contidos na base
        Quando definir a busca de beneficiários por "Famílias"
        E processar a rotina
        Então deverá ser gerado um arquivo .txt com os beneficiários pertencentes ao "Famílias"