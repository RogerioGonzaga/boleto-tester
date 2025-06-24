*** Settings ***
Resource    ../resources/PagamentoPage.robot

*** Test Cases ***
Validar Pagamento com Código Correto
    Open Pagamento Page
    Preencher Código de Barras    34191090080000013509123456789012345670000013500
    Preencher Valor               135.00
    Preencher Data de Vencimento    2025-06-30
    Confirmar Pagamento
    Validar Mensagem de Sucesso
    Sleep    5s

Validar Erro com Código Inválido
    Open Pagamento Page
    Preencher Código de Barras    123456
    Preencher Valor               135.00
    Preencher Data de Vencimento    2025-06-30
    Confirmar Pagamento
    Validar Mensagem de Erro
    Sleep    5s

Validar Erro com Valor Zero
    Open Pagamento Page
    Preencher Código de Barras    34191090080000013509123456789012345670000013500
    Preencher Valor               0
    Preencher Data de Vencimento    2025-06-30
    Confirmar Pagamento
    Validar Mensagem de Erro
    Sleep    5s

Validar Erro com Data em Branco
    Open Pagamento Page
    Preencher Código de Barras    34191090080000013509123456789012345670000013500
    Preencher Valor               135.00
    Preencher Data de Vencimento    ${EMPTY}
    Confirmar Pagamento
    Validar Mensagem de Erro
    Sleep    5s
