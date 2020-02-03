#SMS 1745341 - Conecta - Erro - Faturamento - Guia de Tratamento Odontologico
Como usuário do sistema
Quero que ao realizar a consuta de status PEG pelo conecta
Esperado que o campo autorizado esteja preenchido corretamente

Cenário: Validação de preenchimento do campo autorizado
#SOAP > File > New Project SOAP > Intial WSDL > "http://mga-apl044/QualidadeAG_Corrente/NonAuthenticatedServiceHost/tissSolicitacaoStatusProtocoloV3_03_03.svc"
Dado que se tenha um ou mais PEG do tipo Odontológico
E que esteja faturado
Quando o usuário realizar o solicitção de status protocolo pelo conecta
Então deverá ser apresentado sim no campo autorizado
