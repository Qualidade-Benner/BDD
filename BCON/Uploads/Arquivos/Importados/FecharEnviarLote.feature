#language: pt

Funcionalidade: Fechar e enviar lote guias para a operadora
    Como um prestador usuário do Benner Conecta,
    quero enviar as guias de pagamento,
    de forma que seja possível enviar as guias para a operadora.

    #Base para teste: http://mga-apl020:72/ConectaSql/Account/Login ou https://hom.portalconectasaude.com.br/Account/Login?ReturnUrl=/

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Visualização da página de detalhes do lote
        Dado que estou na página de HISTÓRICO DE ARQUIVOS ENVIADOS - IMPORTADO COM SUCESSO
        E possuo um arquivo importado ainda não fechado e não enviado
        Quando selecionar o arquivo
        E visualizar os Detalhes do Lote
        Então devo ser redirecionado para a página de detalhes do lote selecionado

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Fechar o lote com sucesso
        Dado que estou na página de detalhes de um lote
        Quando eu fechar o lote
        Então devo ter o lote na situação "Fechado (envio pendente)"

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Esquema do Cenário: Enviar o lote com sucesso
        Dado que estou na página de detalhes de um lote fechado e ainda não enviado
        Quando eu enviar o lote
        Então devo ter o lote na situação <SITUACAO>

        Exemplos:
            |                    SITUACAO                   |
            |            Enviada para a operadora           |
            |                  Não enviado                  |