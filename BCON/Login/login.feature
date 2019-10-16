#language: pt

Funcionalidade: Login
    Como um usuário do Benner Conecta,
    quero logar na aplicação,
    de forma que seja possível acessar a home page.

    #Base para teste: http://mga-apl020:72/ConectaSql/Account/Login ou https://hom.portalconectasaude.com.br/Account/Login?ReturnUrl=/

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral
    Esquema do Cenário: Login com sucesso
    &nbsp; &nbsp; &nbsp; <video width="730" height="400" controls><source src="file://mga-fs001/Qualidade/Demonstra%C3%A7%C3%B5es/BCON/Login/LoginConecta.mp4"></video>
        Dado que estou na página de Login do Benner Conecta
        Quando tento logar com o meu usuário <Usuario> e senha <Senha> válidos
        Então devo ser direcionado para a home page

        Exemplos:
        |                  USUARIO                 | SENHA|
        |santacasapresidenteprudente@conecta.com.br|1q2w#E|
        |         adm.postal@conecta.com.br        |1q2w#E|

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral
    Esquema do Cenário: Login com usuário ou senha incorretos
        Dado que estou na página de Login do Benner Conecta
        Quando tento logar com o meu usuário <Usuario> e senha <Senha> inválidos
        Então deverá apresentar a mensagem "E-mail ou senha incorretos!"

        Exemplos:
        |                  USUARIO                 | SENHA |
        | santacasapresidenteprudente@conecta.com.b| 1q2w#E|
        |santacasapresidenteprudente@conecta.com.br|1q2w#E0|

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral
    Esquema do Cenário: Esqueci a senha com e-mail válido
        Dado que estou na página de Login do Benner Conecta
        E esqueci a senha
        Quando clico no botão "Esqueci minha senha"
        E informo o email <Email> válido
        Então deverá apresentar popup com a mensagem "Um e-mail com um link para resetar sua senha foi enviado para seus e-mails cadastrados."
        E enviar o e-mail com uma mensagem para redefinir a senha

        Exemplos:
        |        Email       |
        |dionismr@hotmail.com|

    @Execucao-Automatizado @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral        
    Esquema do Cenário: Esqueci a senha com e-mail inválido
        Dado que estou na página de Login do Benner Conecta
        E esqueci a senha
        Quando clico no botão "Esqueci minha senha"
        E informo o email <Email> inválido
        Então deverá apresentar a mensagem "Não encontrada conta com este e-mail no Benner Conecta!"

        Exemplos:
        |            Email           |
        |michelee.murai@benner.com.br|

    @Execucao-Manual @Prioridade-Alta @Versao-2019.1 @Sistema-Kernel @Funcionalidade-Geral
    Cenário: Logado com a opção de manter conectado
        Dado eu esteja logado no Benner Conecta com a opção de manter conectado
        Quando saiu da página
        E entro novamente na homepage
        Então devo ser direcionado para a home page