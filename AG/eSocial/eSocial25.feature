#language: pt
Funcionalidade: Validação do eSocial de acordo com a versão 2.5.01
	Como responsável pelo envio dos dados de prestadores e pagamentos realizados ao eSocial,
	quero obter as alterações das tabelas de domínio do eSocial da versão 2.5.01,
	de forma que seja possível submeter os arquivos dos eventos periódicos e não periódicos ao governo conforme versão 2.5.01.

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Verificar a disponibilização a versão 2.5 do eSocial
		#Caminho: [Adm] > Verificações
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então será possível selecionar as versões 2.4 e 2.5 nos parâmetros de versão do eSocial

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os registros da Tabela 1 - Categorias de Trabalhadores
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então existirá o registro 304 - "Servidor público exercente de mandato eletivo"
		E existirá o registro 310 - "Servidor Público eventual"
		E a descrição do registro 303 será "Exercente de mandato eletivo"
		E a descrição do registro 306 será "Servidor Público contratado por tempo determinado, sujeito a regime administrativo especial definido em lei própria"
		E a descrição do registro 307 será "Militar"
		E a descrição do registro 410 será "Trabalhador cedido/em exercício em outro órgão - informação prestada pelo Cessionário/Destino"

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os registros da Tabela 06 - Países.
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então a descrição do registro 754 será "eSwatini"

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os registros da tabela 9 - Tipos de Arquivo do eSocial
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então existirá o registro S-2221 - "Exame Toxicológico do Motorista Profissional"
		E existirá o registro S-2245 - "Treinamentos, Capacitações, Exercícios Simulados e Outras Anotações"
		E existirá o registro S-5003 - "Informações do FGTS por Trabalhador"
		E existirá o registro S-5013 - "Informações do FGTS consolidadas por contribuinte"
		E existirá o registro S-1065 - "Tabela de Equipamentos de Proteção"
		E existirá o registro S-2231 - "Cessão/Exercício em Outro Órgão"
		E existirá o registro S-2245 - "Treinamentos, Capacitações, Exercícios Simulados e Outras Anotações"
		E existirá o registro S-2405 - "Cadastro de Beneficiários - Entes Públicos - Alteração"
		E existirá o registro S-2410 - "Cadastro de Benefícios - Entes Públicos - Início"
		E existirá o registro S-2416 - "Cadastro de Benefícios - Entes Públicos - Alteração"
		E existirá o registro S-2420 - "Cadastro de Benefícios - Entes Públicos - Término"
		E não existirá o registro S-2241 - "Insalubridade/Periculosidade/Aposentadoria Especial"
		E a descrição do registro S-1207 será "Benefícios - Entes públicos"
		E a descrição do registro S-1210 será "Pagamentos de Rendimentos" (alterar registros, campos, legendas e código)
		E a descrição do registro S-2206 será "Alteração de Contrato de Trabalho/Relação Estatutária"
		E a descrição do registro S-2298 será "Reintegração/Outros Provimentos"
		E a descrição do registro S-2400 será "Cadastro de Beneficiários - Entes Públicos - Início"

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os registros da Tabela 18 - Motivos de Afastamento.
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então existirá outro registro de numero 17 com a descrição "Licença Maternidade - 120 dias, inclusive para o cônjuge sobrevivente."
		E existirá o registro 35 - "Licença Maternidade - Antecipação e/ou prorrogação mediante atestado médico. Início de vigência em 01/07/2018."
		E existirá os campos Início e Término no grupo Vigência para cada motivo de afastamento
		|CODIGO|DESCRICAO                                                                                                                                                                                                                                                                                                                                  |INICIO  |TERMINO |
		|1     |Acidente/Doença do trabalho                                                                                                                                                                                                                                                                                                                |01/01/14|        | 
		|3     |Acidente/Doença não relacionada ao trabalho                                                                                                                                                                                                                                                                                                |01/01/14|        | 
		|5     |Afastamento/licença prevista em regime próprio (estatuto), sem remuneração                                                                                                                                                                                                                                                                 |01/01/14|        | 
		|6     |Aposentadoria por invalidez                                                                                                                                                                                                                                                                                                                |01/01/14|        |
		|7     |Acompanhamento - Licença para acompanhamento de membro da família enfermo                                                                                                                                                                                                                                                                  |01/01/14|        |
		|8     |Afastamento do empregado para participar de atividade do Conselho Curador do FGTS - art. 65, §6º, Dec. 99.684/90 (Regulamento do FGTS)                                                                                                                                                                                                     |01/01/14|        |
		|10    |Afastamento/licença prevista em regime próprio (estatuto), com remuneração                                                                                                                                                                                                                                                                 |01/01/14|        |
		|11    |Cárcere                                                                                                                                                                                                                                                                                                                                    |01/01/14|        |
		|12    |Cargo Eletivo - Candidato a cargo eletivo - Lei 7.664/1988. art. 25°, parágrafo único - Celetistas em geral                                                                                                                                                                                                                                |01/01/14|        |
		|13    |Cargo Eletivo - Candidato a cargo eletivo - Lei Complementar 64/1990. art. 1°, inciso II, alínea “l” - Servidor público, estatutário ou não, dos órgãos ou entidades da Administração Direta ou Indireta da União, dos Estados, do Distrito Federal, dos Municípios e dos Territórios, inclusive das fundações mantidas pelo Poder Público.|01/01/14|        |
		|14    |Cessão / Requisição                                                                                                                                                                                                                                                                                                                        |01/01/14|31/12/18|
		|15    |Gozo de férias ou recesso - Afastamento temporário para o gozo de férias ou recesso                                                                                                                                                                                                                                                        |01/01/14|        |
		|16    |Licença remunerada - Lei, liberalidade da empresa ou Acordo/Convenção Coletiva de Trabalho                                                                                                                                                                                                                                                 |01/01/14|        | 
		|17    |Licença Maternidade - 120 dias e suas prorrogações/antecipações, inclusive para o cônjuge sobrevivente                                                                                                                                                                                                                                     |01/01/14|30/06/18|
		|17    |Licença Maternidade - 120 dias, inclusive para o cônjuge sobrevivente                                                                                                                                                                                                                                                                      |01/07/18|        | 
		|18    |Licença Maternidade - 121 dias a 180 dias, Lei 11.770/2008 (Empresa Cidadã), inclusive para o cônjuge sobrevivente                                                                                                                                                                                                                         |01/01/18|        |
		|19    |Licença Maternidade - Afastamento temporário por motivo de aborto não criminoso                                                                                                                                                                                                                                                            |01/01/14|        |
		|20    |Licença Maternidade - Afastamento temporário por motivo de licençamaternidade decorrente de adoção ou guarda judicial de criança, inclusive para o cônjuge sobrevivente                                                                                                                                                                    |01/01/14|        |
		|21    |Licença não remunerada ou Sem Vencimento                                                                                                                                                                                                                                                                                                   |01/01/14|        |
		|22    |Mandato Eleitoral - Afastamento temporário para o exercício de mandato eleitoral                                                                                                                                                                                                                                                           |01/01/14|        |
		|23    |Mandato Eleitoral - Afastamento temporário para o exercício de mandato eleitoral, com remuneração                                                                                                                                                                                                                                          |01/01/14|31/12/18|
		|24    |Mandato Sindical - Afastamento temporário para exercício de mandato sindical                                                                                                                                                                                                                                                               |01/01/14|        |
		|25    |Mulher vítima de violência - Lei 11.340/2006 - art. 9º §2o, II - Lei Maria da Penha                                                                                                                                                                                                                                                        |01/01/14|        |
		|26    |Participação de empregado no Conselho Nacional de Previdência Social-CNPS (art. 3º, Lei 8.213/1991)                                                                                                                                                                                                                                        |01/01/14|        |
		|27    |Qualificação - Afastamento por suspensão do contrato de acordo com o art 476-A da CLT                                                                                                                                                                                                                                                      |01/01/14|        |
		|28    |Representante Sindical - Afastamento pelo tempo que se fizer necessário, quando, na qualidade de representante de entidade sindical, estiver participando de reunião oficial de organismo internacional do qual o Brasil seja membro                                                                                                       |01/01/14|        |
		|29    |Serviço Militar - Afastamento temporário para prestar serviço militar obrigatório;                                                                                                                                                                                                                                                         |01/01/14|        |
		|30    |Suspensão disciplinar - CLT, art. 474                                                                                                                                                                                                                                                                                                      |01/01/14|        |
		|31    |Servidor Público em Disponibilidade                                                                                                                                                                                                                                                                                                        |01/01/14|        |
		|33    |Licença Maternidade - de 180 dias, Lei 13.301/2016. 	                                                                                                                                                                                                                                                                                   |01/06/16|        |
		|34    |Inatividade do trabalhador avulso (portuário ou não portuário) por período superior a 90 dias 	                                                                                                                                                                                                                                           |01/01/14|        |
		|35    |Licença Maternidade - Antecipação e/ou prorrogação mediante atestado médico 	                                                                                                                                                                                                                                                           |01/07/18|        |

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os registros da Tabela 20 - Tipos de Logradouro
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então existirá o registro "ALD - Aldeia"
		E existirá o registro "IGP - Igarapé"

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar os códigos da Tabela 21 - Natureza Jurídica.
		Quando processar a verificação 48
		E ativar a versão 2.5 do eSocial
		Então o código 330-6 ter sido alterado 330-1
		E o código 412-4 ter sido alterado 412-0

	@Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar o cadastro de dependentes no prestador eSocial
    	#Caminho: [Prestadores] > Cadastro de Prestadores > Pessoa Física > eSocial > Dependentes
		Dado um prestador fisico recebedor
		E com os dados do eSocial devidamentes cadastrados
		Quando cadastrar um dependente
		E Preencher os campos
		|TIPO|NOME |DTNASCIMENTO|DTINICIAL |SEXO|DEPFINSPREV|
		|01  |João |15/05/1990  |01/01/2019|M   |S          |
		|03  |Maria|16/12/2017  |01/01/2019|F   |           |
		|06  |José |19/11/1987  |01/01/2019|    |           |
		Então deverá salvar com sucesso

	#S-1210
    #CRIAR BDD DO PROCESSAMENTO S-1210
    #Dado um prestador fisico recebedor
    #E tenha faturas do tipo 210.Pagamento Prestadores
    #E que não estejam baixadas
    #E que o lancamento financeiro tenha a categoria trabalhador parametrizada
    #E gerado demonstrativo do eSocial
    #E entregado o S-1200
    #E baixar as faturas

	@Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Alterar a quantidade de caracteres suportados para a tag {bairro} e {dscLograd}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Periódicos > S-1210 - Pagamentos de Rendimentos
		Dado um prestador fisico recebedor com o bairro preenchido
		E processado o S-1210
		Quando Gerar o XML do S-1210 na competência das faturas 210
		Então a tag {bairro} devera suportar 90 caracteres
		E a tag {dscLograd} devera suportar 100 caracteres

	#XML: tag {perApur} - Processo de emissão benner sempre será 1.
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: O evento S-1210 somente pode ser enviado se o periodo de apuracao for igual ou inferior ao mes corrente.
		#Caminho: [Controle Financeiro] > eSocial > Eventos Periódicos > S-1210 - Pagamentos de Rendimentos
		Dado um prestador fisico recebedor
		E tenha faturas do tipo 210.Pagamento Prestadores com a data da competencia do inss maior que a data do mes corrente
		E processado o S-1210
		Quando Gerar o XML do S-1210 na competência das faturas 210
		Então Devera emitir uma mensagem 'O evento somente pode ser enviado se o periodo de apuracao for igual ou inferior ao mes/ano corrente' ou 'Data de apuração excedida'

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Periódicos > S-1210 - Pagamentos de Rendimentos
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica do declarante seja igual a [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E ter um prestador fisico recebedor
		E processado o S-1210
		Quando Gerar o XML do S-1210 na competência das faturas 210
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 14 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante não eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Periódicos > S-1210 - Pagamentos de Rendimentos
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica do declarante seja diferente de [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E ter um prestador fisico recebedor
		E baixar as faturas
		E processado o S-1210
		Quando Gerar o XML do S-1210 na competência das faturas 210
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 8 posicoes

	#65 - Previdência Complementar do Servidor Público - RRA;
	#66 - Previdência Complementar do Servidor Público - Contribuição de Risco;
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {tpBcIRRF} com os novos valores 65 e 66
		#Caminho: [Controle Financeiro] > eSocial > Eventos Periódicos > S-1210 - Pagamentos de Rendimentos
		Dado Um declarante com um CNPJ e natureza juridica cadastrado
		E um prestador fisico recebedor
		E o prestador tenha faturas do tipo 210.Pagamento Prestadores
		E processado o S-1210
		Quando Gerar o XML do S-1210 na competência das faturas 210
		Então devera gerar com sucesso
		E a tag {tpBcIRRF} devera ser preenchida com 65 ou 66
	
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Alterar a quantidade de caracteres suportados para a tag {bairro} e {dscLograd}
    	#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2205 - Alteração de Dados Cad. do Trab
		Dado um prestador fisico recebedor
		E o cadastro de endereco tenha o bairro preenchido
		E os dados eSocial cadastrados
		E seja credenciado (ter um registro ?entregue? no S-2300)
		E que tenha Alteracao nos dados cadastrais do trabalhador, tais como: documentação pessoal, endereço, escolaridade, estado civil, contato, etc
		Quando Processar o agendamento 'Processar evento não periódico eSocial'
		E gerar o XML do S-2205
		Então a tag {bairro} devera suportar 90 caracteres
		E a tag {dscLograd} devera suportar 100 caracteres

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2205 - Alteração de Dados Cad. do Trab
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja igual a [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E ter um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado (ter um registro ?entregue? no S-2300)
		E que tenha Alteracao nos dados cadastrais do trabalhador, tais como: documentação pessoal, endereço, escolaridade, estado civil, contato, etc
		Quando Processar o agendamento 'Processar evento não periódico eSocial'
		E gerar o XML do S-2205
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 14 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante nao eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2205 - Alteração de Dados Cad. do Trab
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja diferente de [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E ter um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado (ter um registro ?entregue? no S-2300)
		E que tenha Alteracao nos dados cadastrais do trabalhador, tais como: documentação pessoal, endereço, escolaridade, estado civil, contato, etc
		Quando Processar o agendamento 'Processar evento não periódico eSocial'
		E gerar o XML do S-2205
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 8 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {sexoDep} e {depFinsPrev}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2205 - Alteração de Dados Cad. do Trab
		Dado um prestador fisico recebedor
		E um dependente cadastrado para fins previdenciarios do sexo feminino 
		E outro dependete cadastrado que nao seja para fins previdenciarios do sexo masculino
		E os dados eSocial cadastrados
		E seja credenciado (ter um registro ?entregue? no S-2300)
		E que tenha Alteracao nos dados cadastrais do trabalhador, tais como: documentação pessoal, endereço, escolaridade, estado civil, contato, etc
		Quando Processar o agendamento 'Processar evento não periódico eSocial'
		E gerar o XML do S-2205
		Então a tag {sexoDep} devera vir com valor F para feminino e M para masculino
		E a tag {depFinsPrev} devera vir S se o dependente for para fins previdenciarios, se nao, vir N
	
	#Não dá para testar
	@Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Alterar a quantidade de caracteres suportados para a tag {bairro} e {dscLograd}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E o cadastro de endereco tenha o bairro preenchido
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então a tag {bairro} devera suportar 90 caracteres
		E a tag {dscLograd} devera suportar 100 caracteres

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja igual a [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 14 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante nao eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja diferente de [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 8 posicoes

	#RegraRegistroValidaInfoDatas
	#Campos: ESO_PARAMETROS.DATAINICIOOBRIGATORIEDADEEVENT
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {dtInicio} quando a data de inicio do trabalhador (data de credenciamento) inferior a data de nascimento do trabalhador
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E a data de inicio da obrigatoriedade dos eventos nao periodicos inferior a data de nascimento do trabalhador
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então devera gerar uma inconsistencia com a mensagem "A data de início deve ser posterior à data de nascimento do trabalhador."

	#RegraRegistroValidaInfoDatas
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {dtInicio} quando a data de inicio do trabalhador (data de credenciamento) eh inferior a data de inicio da obrigatoriedade dos eventos nao periodicos 
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador com a data inferior a data de de inicio da obrigatoriedade dos eventos nao periodicos
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então devera gerar um XML com a tag {cadIni} = [S]
		E a tag {dtInicio} igual a data inicio, ou seja, a data de credenciamento do prestador

	#RegraRegistroValidaInfoDatas
	#Essa regra já existe, somente validar se a tag cadIni está indo com o valor correto
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {dtInicio} quando a data de inicio do trabalhador (data de credenciamento) igual a data de inicio da obrigatoriedade dos eventos nao periodicos 
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador com a data igual ou maior a data de de inicio da obrigatoriedade dos eventos nao periodicos
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então devera gerar um XML com a tag {cadIni} = [N]
		E a tag {dtInicio} igual a data inicio, ou seja, a data de credenciamento do prestador

	#RegraRegistroValidaInfoDatas
	#Essa regra já existe, somente validar se a tag cadIni está indo com o valor correto
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {dtInicio} quando a data de inicio do trabalhador (data de credenciamento) maior que a data de inicio da obrigatoriedade dos eventos nao periodicos 
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador com a data anterior que a data de de inicio da obrigatoriedade dos eventos nao periodicos
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então devera gerar um XML com a tag {cadIni} = [S]
		E a tag {dtInicio} igual a data inicio, ou seja, a data de credenciamento do prestador

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {sexoDep} e {depFinsPrev}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E um dependente cadastrado para fins previdenciarios do sexo feminino 
		E outro dependete cadastrado que nao seja para fins previdenciarios do sexo masculino
		E os dados eSocial cadastrados
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		E gerar o XML do S-2300 no prestador na competencia do credenciamento
		Então a tag {sexoDep} devera vir com valor F para feminino e M para masculino
		E a tag {depFinsPrev} devera vir S se o dependente for para fins previdenciarios, se nao, vir N

	#REGRA_COMPATIB_CATEG_EVENTO
	#Cadastros de Prestadores benner sempre irá buscar somente os códigos 701, 731, 738
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a permissao de gerar eventos somente para trabalhadores permitidos
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E cadastrado com a categoria de trabalhadores igual a 201, 202, 304, 305, 308, 310, 401, 410, 701, 711, 712, 721, 722, 723, 731, 734, 738, 741, 751, 761, 771, 781, 901, 902, 903, 904 ou 905
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		Então devera gerar um registro processado na competencia do credenciamento

	#REGRA_COMPATIB_CATEG_EVENTO - Não dá para testar
	#Cadastros de Prestadores benner sempre irá buscar somente os códigos 701, 731, 738
	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a permissao de gerar eventos somente para trabalhadores permitidos
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2300 - Trab. Sem Vínculo - Início
		Dado um prestador fisico recebedor
		E os dados eSocial cadastrados
		E cadastrado com a categoria de trabalhadores diferente de 201, 202, 304, 305, 308, 310, 401, 410, 701, 711, 712, 721, 722, 723, 731, 734, 738, 741, 751, 761, 771, 781, 901, 902, 903, 904 ou 905
		E ainda nao tenha sido credenciado
		Quando realizar o credenciamento do prestador
		Então nao devera gerar um registro processado na competencia do credenciamento

	# Não dá para testar
	@Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Alterar a quantidade de caracteres suportados para a tag {bairro} e {dscLograd}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2306 - Trab. Sem Vínculo - Alteração
		Dado um prestador fisico recebedor
		E o cadastro de endereco tenha o bairro preenchido
		E os dados eSocial cadastrados
		E seja credenciado
		Quando alterar nos dados de cargo ou função do prestador
		E gerar o XML do S-2360 no prestador na competencia da alteracao
		Então a tag {bairro} devera suportar 90 caracteres
		E a tag {dscLograd} devera suportar 100 caracteres

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2306 - Trab. Sem Vínculo - Alteração
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja igual a [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado
		Quando alterar nos dados de cargo ou função do prestador
		E gerar o XML do S-2360 no prestador na competencia da alteracao
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 14 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante nao eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2306 - Trab. Sem Vínculo - Alteração
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja diferente de [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado
		Quando alterar nos dados de cargo ou função do prestador
		E gerar o XML do S-2360 no prestador na competencia da alteracao
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 8 posicoes

	#Não dá para testar
	@Execucao-Manual @Prioridade-Baixa @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a quantidade de caracteres suportados para a tag {bairro} e {dscLograd}
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2399 - Trab. Sem Vínculo - Término
		Dado um prestador fisico recebedor
		E o cadastro de endereco tenha o bairro preenchido
		E os dados eSocial cadastrados
		E seja credenciado
		Quando descredenciar o prestador
		E gerar o XML do S-2399 no prestador na competencia do descredenciamento
		Então a tag {bairro} devera suportar 90 caracteres
		E a tag {dscLograd} devera suportar 100 caracteres

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2399 - Trab. Sem Vínculo - Término
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja igual a [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado
		Quando descredenciar o prestador
		E gerar o XML do S-2399 no prestador na competencia do descredenciamento
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 14 posicoes

	@Execucao-Manual @Prioridade-Media @Versao-351 @Sistema-Kernel @Funcionalidade-eSocial
	Cenário: Validar a tag {nrInsc} dentro do registro pai {ideEmpregador} quando o declarante nao eh algum orgao, autarquia, ou fundacao federal
		#Caminho: [Controle Financeiro] > eSocial > Eventos Não Periódicos > S-2399 - Trab. Sem Vínculo - Término
		Dado Um declarante com um CNPJ de 14 posicoes
		E a natureza juridica dele seja diferente de [101-5], [104-0], [107-4], [110-4], [113-9], [116-3] ou [119-8]
		E tenha um prestador fisico recebedor
		E os dados eSocial cadastrados
		E seja credenciado
		Quando descredenciar o prestador
		E gerar o XML do S-2399 no prestador na competencia do descredenciamento
		Então a tag {nrInsc} devera ser preenchida com o CNPJ de 8 posicoes