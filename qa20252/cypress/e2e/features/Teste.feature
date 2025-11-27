#language: pt

Funcionalidade: Acessar página de órgãos do gorveno

    Como um usuário
    Quero vizualizar os "Orgãos do Governo"
    Para obter informações sobre os órgãos governamentais

    Contexto: 
        Dado que eu estou na página do Gov.br

    Cenário: Entrar na seção de órgãos do governo
        Quando eu clicar no link "Órgãos do Governo"
        Então eu devo ser redirecionado para a página de órgãos do governo
     
    Esquema do Cenário: Acessar informações de órgãos específicos
        Quando eu clicar no link com URL "<orgao_url>"
        Então eu devo ser redirecionado para a página do órgão "<orgao_nome>"

        Exemplos:
            | orgao_url                                 | orgao_nome                |
            | https://www.gov.br/pt-br/orgaos-do-governo | Órgãos do Governo         |
            | https://www.gov.br/agu/pt-br | AGU — Advocacia-Geral da União  |
            | https://www.bcb.gov.br/ | Banco Central do Brasil       |    