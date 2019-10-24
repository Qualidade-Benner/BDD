#SMS 1699109 - [STJ - Desktop] - Devolução de PEGs
Sendo usuario do sistema
Posso cadastrar um prestador com mais de 46 caracteres
Para que não sobreponha os outros campos a frente

Cenário: Verificação do campo prestador com nome maior que 46 caracteres
#[Prestadores]> Cadastro de prestadores> Botão detalhes
Dado que se tenha um prestador com nome maior que 46 caracteres
Quando o usuario entrar em detalhes do prestador
Então o nome não deverá sobrepor os demais campos