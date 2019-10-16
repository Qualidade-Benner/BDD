#language: pt

Funcionalidade: Login
    Como usuário responsável pela execução dos testes automatizados,
	quero logar na aplicação Benner Automatiza,
	de forma que seja possível acessar a home page.

    #Base para teste: https://mga-apl044/QAUTOMATIZA/Login

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Esquema do Cenario: Login com sucesso
    &nbsp; &nbsp; &nbsp; <video width="730" height="400" controls><source src="file://mga-fs001/Qualidade/Demonstra%C3%A7%C3%B5es/AUTOMATIZA/Login/BennerAutomatizaLoginSucesso.mp4"></video>
        Dado que estou na página de login do Benner Automatiza
        Quando eu logo com meu usuário <Usuario> e senha <Senha> válidos
        Então eu devo ser direcionado para a home page.
    
        Exemplos:
            | USUARIO |  SENHA |
            |automacao|24073944|

    @Execucao-Manual @Versao-1.0 @Sistema-Automatiza @Funcionalidade-BateriaEmExecucao
    Esquema do Cenario: Login com usuário ou senha incorretos
        Dado que estou na página de login do Benner Automatiza
        Quando eu logo com meu usuário <Usuario> e senha <Senha> inválidos
        Então deverá apresentar a mensagem "Usuário incorreto ou senha incorreta".
    
        Exemplos:
            | USUARIO |  SENHA |
            |automacao| 123456 |
            |   auto  |24073944|