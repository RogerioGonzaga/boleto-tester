*** Settings ***
Library    Browser

*** Variables ***
${URL}    file://${CURDIR}/../pages/pagamento.html

*** Keywords ***
Open Pagamento Page
    New Browser    headless=False
    New Context    viewport={"width":1920,"height":1080}
    New Page       ${URL}


Preencher Código de Barras
    [Arguments]    ${codigo}
    Fill Text    id=codigo    ${codigo}

Preencher Valor
    [Arguments]    ${valor}
    Fill Text    id=valor    ${valor}

Preencher Data de Vencimento
    [Arguments]    ${data}
    Fill Text    id=vencimento    ${data}

Confirmar Pagamento
    Click    text=Pagar

Validar Mensagem de Sucesso
    ${texto}=    Get Text    id=mensagem
    Should Be Equal    ${texto}    Pagamento realizado com sucesso!

Validar Mensagem de Erro
    ${texto}=    Get Text    id=mensagem
    Should Contain    ${texto}    Erro
