#language: pt

Funcionalidade: Verificar status lote pagamento
    Como um prestador usuário do Benner Conecta,
    quero obter o status das guias de pagamento,
    de forma que eu esteja ciente da situação em que a guia se encontra.

    #Base para teste: http://mga-apl020:72/ConectaSql/Account/Login ou https://hom.portalconectasaude.com.br/Account/Login?ReturnUrl=/

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Visualização da página de detalhes do lote
        Dado que estou na página de HISTÓRICO DE ARQUIVOS ENVIADOS - IMPORTADO COM SUCESSO
        E possuo um arquivo importado ainda não fechado e não enviado
        Quando selecionar o arquivo
        E visualizar os Detalhes do Lote
        Então devo ser redirecionado para a página de detalhes do lote selecionado

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Esquema do Cenário: Enviar o lote com sucesso
        Dado que estou na página de detalhes do lote selecionado
        Quando solicitar a situação do lote
        Então devo ter o lote na situação <SITUACAO>

        Exemplos:
            |                    SITUACAO                   |
            |            Enviada para a operadora           |
            |                   Em análise                  |
            |            Liberado para pagamento            |
            |            Encerrado sem pagamento            |
            |Analisado e aguardando liberação para pagamento|
            |               Pagamento efetuado              |
            |                 Não localizado                |
            |       Aguardando informação complementar      |
            |                   Cancelado                   |
            |                  Não enviado                  |