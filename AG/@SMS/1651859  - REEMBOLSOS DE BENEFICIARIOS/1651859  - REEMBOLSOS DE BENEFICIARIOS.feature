    #Parametrizações necessárioas de valor do evento
    Cenário: Criar para o evento na tabela Genérica
    #[Prestadores]> Preços> tabelas genéricas> Dotações
        Dado que não exista valor teto para o evento
        Quando o usuário incluir um novo valor para o evento
        E tentar salvar o registro
        Então deverá ser salvo 
        E o valor do evento deverá aparecer para a vigência criada

    Cenário: Criar Teto de reembolso para o evento 
    #[Beneficiário]> Tabelas> Teto de reembolso
        Dado que se tenha um evento com valor na Tabela Genérica
        Quando o usuário incluir um novo Teto de reembolso
        E referenciar a Tabela Genérica 
        E incluir o evento nas regras de classificação
        E salvar o registro
        Então o registro deverá ser criado com sucesso

    Cenário: Incluir tabela de teto de reembolso no contrato
    #[Beneficiário]> Contrato> Teto de reembolso
        Dado Que ja exista a tabela de teto de reembolso 
        Quando o usuário incluir a tabela no contrato 
        E salvar o registro
        Então deverá ser salvo com sucesso
        E a tabela deverá ser inclusa no contrato

Funcionalidade: Reembolso de Beneficiários com nova regra de Teto de PF Fixa
#SMS 1651859  - REEMBOLSOS DE BENEFICIARIOS
O processo de reembolso deverá ser modificado para que a aplicação do percentual de participação financeira,
ocorra após a aplicação do teto de reembolso parametrizado no contrato do beneficiário.
Outra necessidade é referente a atribuição de preços de reembolsos, parametrizados nos contratos, onde teremos que indicar a qual plano os preços são pertencentes.
Atualmente há a necessidade de atribuir valores diferenciados por plano do beneficiário e o sistema não possibilita esta parametrização, seja por dotações e/ou faixa de eventos.

    Cenário: Acionar o flag da nova regra de calculo de reembolso
    #[ADM]> Parametros Gerais> Processamento de contas> Princial> Flag "Calc. da PF após teto de Reembolso"
        Dado que o Flag exista na base
        E não esteja acionado
        Quando o usuário acionar o flag 
        E salvar o registro
        Então o registro deverá ser salvo
        E a nova regra de Calculo de PF deverá funcionar

    Cenário: Verificar percentual de PF para que o valor de reembolso seja igual ao valor do teto do valor do evento
        Dado que se tenha um peg em fase de conferencia
        E o valor de reembolso seja igual ao valor de teto de reembolso do evento
        E o flag "Calc. da PF após teto de Reembolso" esteja acionado
        Quando o usuário mudar o Peg para Pronto
        Então o sistema não deverá ter uma nova aplicação de percentual de PF

    Cenário: Verificar calculo para evento que tenha valor acima do valor do teto de reembolso
        Dado que se tenha um PEG em fase de conferencia 
        E o valor do reembolso seja maior que o valor do teto de reembolso do evento
        E o flag "Calc. da PF após teto de Reembolso" esteja acionado
        Quando o usuário mudar o PEG para Pronto
        Então o sistema deverá aplicar a nova regra de percentual de PF encima do valor to teto de reembolso
        E o valor cobrado subtraido pelo valor do evento deverá ser melhor que o valor do teto de reembolso

    Cenário: Verificar calculo para evento que tenha valor abaixo do valor do teto de reembolso
        Dado que se tenha um PEG em fase de conferencia 
        E o valor do reembolso seja menor que o valor do teto de reembolso do evento
        E o flag "Calc. da PF após teto de Reembolso" esteja acionado
        Quando o usuário mudar o PEG para Pronto
        Então o sistema não devera aplicar a nova regra de percentual de PF

    Cenário: Verificar calculo para evento da nova regra de calculo de teto de reembolso para beneficiários que tenham PF de 0%
        Dado que se tenha um PEG em fase de conferencia
        E o valor de reembolso seja maior que o valor do teto de reembolso do evento
        E a PF do beneficiário em questão seja 0%
        E o flag "Calc. da PF após teto de Reembolso" esteja acionado
        Quando o usuário mudar o PEG para Pronto
        Então o sistema deverá aplicar a porcentagem de pf sobre o teto de reembolso
        Mas por ser 0% de PF o calculo deverá ficar sobre o valor inicial de desconto do teto de reembolso sobre o valor do evento

    Cenário: Verificar calculo para evento da nova regra de calculo de teto de reembolso para beneficiários que tenham PF de 100% 
        Dado que se tenha um PEG em fase de conferencia
        E o valor de reembolso seja maior que o valor do teto de reembolso do evento
        E a PF do beneficiário em questão seja 100%
        E o flag "Calc. da PF após teto de Reembolso" esteja acionado
        Quando o usuário mudar o PEG para Pronto
        Então o sistema não deverá aplicar a porcentagem de pf sobre o teto de reembolso