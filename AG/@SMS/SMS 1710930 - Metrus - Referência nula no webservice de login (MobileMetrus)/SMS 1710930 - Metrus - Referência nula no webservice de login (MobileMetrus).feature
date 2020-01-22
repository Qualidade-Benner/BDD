#SMS 1710930 - Metrus - Referência nula no webservice de login (MobileMetrus)
Como usuário do sistema
Quero que ao fazer login no aplicativo da Metrus
Esperado que o login seja efetuado  

Cenário: Verificar Login pela API Metrus 
#[http://mga-apl044/QMetrus_Corrente/swagger] > LoginService > (POST)/api/Login/login
Dado que se tenha um usuario cadastrado no sistema
Quando o usuario fizer a execução do Login no aplicativo
Então deverá fazer acesso 
E os dados devem coincidir com os do sistema

