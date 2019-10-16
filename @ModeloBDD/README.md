# Este modelo foi baseado em dois documentos analisados pelo diretor, por alguns analistas, desenvolvedores e testadores.

## Ferramentas utilizadas:
Visual Studio Code
```bash
Plugins: 
BDD - Feature-Editor	
Gherkin Indent
```
No VS2017 poderá utilizar o plugin SpecFlow.

OBS Studio para gravar as demonstrações.

Picklesdoc para gerar documentos.

## Tags:
As tags utilizadas são:
```bash
@Execucao 
@Prioridade 
@Versao 
@Sistema 
@Funcionalidade 
@Solicitacao
```
Elas servem para facilitar as pesquisas e tirar métricas.
A estrutura é @tag-opção, por exemplo, @Execucao-Manual
- A tag @Execucao possui as opções Manual e Automatizado, ao utilizar Automatizado, deduz que o cenário já foi, também, realizado manualmente.
- A tag @Prioridade possui as opções Alta, Média e Baixa, definido junto com o PO. Define qual é a prioridade daquele cenário ser executado, pensando no risco que aquele cenário tem.
- A tag @Versao é a versão do sistema que o cenário foi criado.
- A tag @Sistema é o sistema que o cenário foi criado, por exemplo, STJ, CAMED ou Kernel.
- A tag @Funcionalidade é a funcionalidade que o cenário foi criado, seguir o requisito da SMS no siscon.
- A tag @Solicitacao é qual cliente solicitou a implementação, não é obrigatório.