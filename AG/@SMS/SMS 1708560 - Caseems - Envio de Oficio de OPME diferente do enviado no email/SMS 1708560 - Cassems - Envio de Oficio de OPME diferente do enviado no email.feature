#SMS 1708560 - CASSEMS - ENVIO DE OFICIO DE OPME DIFERENTE DO ENVIADO NO EMAIL

Eu como operador de sistema
Quero que ao gerar o relatório tanto pelo e-mail ou sistema
Esperado que os relatórios gerados sejam iguais
E contenham os beneficiários parametrizados

Cenário: Verificar dados do relatório gerado
#[Atendimento] > Autorização > Digitar > Menu 'Comandos > Outros > Enviar Ofício de OPME'
Dado que se tenha uma autorização com oficio de OPME anexado
Quando o usuário gerar o relatório do sistema
E gerar o relatório por e-mail
Então os relatórios gerados deverão ter o mesmo resultado
E com nome do Beneficiario do evento de OPME