#SMS 1713042 - TRF1 - Crítica indevida de saldo insuficiente no processamento de tarefas
Sendo usuário do sistema
Posso faturar um ou mais PEGs atingindo o valor exato do empenho 
Para que o sistema desconte normalmente o valor sem bloquear o processo


Cenário:Faturando um ou mais PEGs com valor exato do empenho
#[Processamento de contas]> Faturameto> Pagamento> 210 - 210. Pagamento Prestadores
Dado que se tenha um ou mais PEGs em fase pronto
E o valor deles seja exatamente o mesmo saldo do empenho
Quando o usuário processar o pagamento 
Então deverá ser faturada com sucesso
E o saldo do empenho deverá ser zerado