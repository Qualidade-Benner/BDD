#language: pt

Funcionalidade: Importar lote guias para a operadora
    Como um prestador usuário do Benner Conecta,
    quero importar as guias de pagamento,
    de forma que seja possível enviar as guias para a operadora.

    #Base para teste: http://mga-apl020:72/ConectaSql/Account/Login ou https://hom.portalconectasaude.com.br/Account/Login?ReturnUrl=/

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Enviar guia de consulta via Upload com sucesso
        Dado que estou na página de envio de arquivos
        Quando incluir um lote guias de consulta com tamanho no máximo 15MB
        E este arquivo esteja de acordo com os padrões TISS
        E possua um número de lote ainda não enviado
        E enviar o arquivo
        Então devo ver a mensagem "Arquivo(s) enviado(s) para processamento..."
        E ser direcionado para a página de "HISTÓRICO DE ARQUIVOS ENVIADOS - IMPORTADO COM SUCESSO"

    @Execucao-Manual @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Enviar guia via Upload com registro ANS inválido
        Dado que estou na página de envio de arquivos
        Quando incluir um lote guias com tamanho no máximo 15MB
        E este arquivo esteja com o registro ANS inválido
        E enviar o arquivo
        Então o sistema deverá apresentar a mensagem "AG_30301_loteGuias_consulta.xml - Registro ANS inválido ou não cadastrado."