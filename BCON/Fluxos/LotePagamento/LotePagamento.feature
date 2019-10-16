#language: pt

Funcionalidade: Enviar lote de pagamento para a operadora
    Como um usuário prestador do Benner Conecta,
    quero enviar lote de pagamento para a operadora,
    de forma que seja possível acessar a home page.

    #Base para teste: http://mga-apl020:72/ConectaSql/Account/Login ou https://hom.portalconectasaude.com.br/Account/Login?ReturnUrl=/

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral
    Cenário: Login com sucesso
        Dado que estou na página de Login do Benner Conecta
        Quando tento logar com o meu usuário "santacasapresidenteprudente@conecta.com.br" e senha "1q2w#E" válidos
        Então devo ser direcionado para a home page
        
    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Enviar guia de consulta via Upload com sucesso
        Dado que estou na página de envio de arquivos
        Quando incluir um lote guias de consulta com tamanho no máximo 15MB
        E este arquivo esteja de acordo com os padrões TISS
        E possua um número de lote ainda não enviado
        E enviar o arquivo
        Então devo ver a mensagem "Arquivo(s) enviado(s) para processamento..."
        E ser direcionado para a página de "HISTÓRICO DE ARQUIVOS ENVIADOS - IMPORTADO COM SUCESSO"

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Visualização da página de detalhes do lote
        Quando selecionar o arquivo
        E visualizar os Detalhes do Lote
        Então devo ser redirecionado para a página de detalhes do lote selecionado

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Cenário: Fechar o lote com sucesso
        Quando eu fechar o lote
        Então devo ter o lote na situação "Fechado (envio pendente)"

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Esquema do Cenário: Enviar o lote com sucesso
        Quando eu enviar o lote
        Então devo ter o lote na situação <SITUACAO>

        Exemplos:
            |                    SITUACAO                   |
            |            Enviada para a operadora           |
            |                  Não enviado                  |

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Upload
    Esquema do Cenário: Enviar o lote com sucesso
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