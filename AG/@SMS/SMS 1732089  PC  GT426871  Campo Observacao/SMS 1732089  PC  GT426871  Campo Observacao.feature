#SMS 1732089 - PC - GT426871 - Campo Observação
Disponibilizar este campo na parametrização dos modelos de guias e habilitar na interface de digitação de Guias.
O campo “Observação” deverá disponibilizar 500 caracteres.

Funcionalidade: Digitar uma Guia com o campo OBSERVAÇÃO/JUSTIFICATIVA incluso 

Cenário: Verificar existencia do campo Observação/Justificativa nas GUIAS Normais ou Reapresentadas pela interface de Digitação
#[Processamento de contas]> Competências de PEG> Filiais> Em digitação ou botão <Digitação/Ánalise de PEG>
    Dado que se tenha um ou mais PEGs
    E estiverem na fase de Digitação
    Quando o usuário estiver na interface de digitação de Guias
    Então o campo Observação/Justificativa deverá existir 
    E deverá ser editavel
    E deverá comportar até 500 caracteres

Cenário: Verificar existencia do campo Observação/Justificativa nas GUIAS Normais ou Reapresentadas pela Tree_View
#[Processamento de contas]> Competências de PEG> Filiais> FASES DO PEG> PEG> Guias> "Aba Tiss"
    Dado que se tenha um ou mais PEGs
    E estiverem na fase de Digitação
    Quando o usuário estiver na Guia pela Tree-view
    Então o campo Observação/Justificativa deverá existir
    E deverá ser editavel 
    E deverá comportar no máximo 500 caracteres

Cenário: Preencher e salvar o campo Observação/Justificativa nas GUIAS Normais ou Reapresentadas pela interface
#[Processamento de contas]> Competências de PEG> Filiais> Em digitação ou botão <Digitação/Ánalise de PEG>
    Dado que se esteja na interface de digitação de Guias
    Quando o usuário estiver digitando o campo Observação/Justificativa
    E tentar salvar o registro
    Então deverá salvar o campo com o conteúdo digitado
    E o limite de caracteres não poderá ultrapassar 500 caracteres

Cenário: Preencher e salvar o campo Observação/Justificativa nas GUIAS Normais ou Reapresentadas pela Treeview
#[Processamento de contas]> Competências de PEG> Filiais> FASES DO PEG> PEG> Guias> "Aba Tiss"
    Dado que se esteja na Guia de um Peg pela Tree-view
    E estiverem na fase de <FASES DO PEG>
    Quando o usuário digitar o campo Observação/Justificativa
    E tentar salvar o registro
    Então deverá salvar o campo com o conteúdo digitado
    E o limite de caracteres não poderá ultrapassar 500 caracteres     
                    Exemplos:   
                    |FASES DO PEG|
                    |  Digitação |
                    | Conferência|
                    | Verificação|

Cenário: Editar o campo Observação/Justificativa e salvar pela interface de digitação
#[Processamento de contas]> Competências de PEG> Filiais> Em digitação ou botão <Digitação/Ánalise de PEG>
    Dado que se esteja na Guia de um peg pela interface de digitação
    E o campo Observação/Justificativa estiver preenchido
    Quando o usuário editar o campo
    E tentar salvar o registro
    Então deverá salvar o campo com o conteúdo editado sem nenhum erro

Cenário: Editar o campo Observação/Justificativa e salvar pela tree-view
#[Processamento de contas]> Competências de PEG> Filiais> FASES DO PEG> PEG> Guias> "Aba Tiss"
    Dado que se tenha um ou mais PEGs na fase de <FASES DO PEG>
    E o campo Observação/Justificativa já digitado na Guia
    Quando o usuário editar o campo
    E tentar salvar o registro
    Então deverá salvar o campo com o conteúdo digitado
                    Exemplos:   
                    |FASES DO PEG|
                    |  Digitação |
                    | Conferência|
                    | Verificação|

Cenário: Editar o campo Observação/Justificativa com os PEGs em fase de Pronto
#[Processamento de contas]> Competências de PEG> Filiais> Fase de Pronto> PEG> Guias> "Aba Tiss"
    Dado que se tenha um ou mais PEGs em fase de Pronto
    E o campo Observação/Justificativa estiver digitado em sua Guia
    Quando o usuário tentar editar o registro 
    E salvar o mesmo
    Então o sistema não deverá salvar o conteúdo
    E deverá informar que a ação não é permitida

