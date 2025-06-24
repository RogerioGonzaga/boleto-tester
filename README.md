# boleto-tester

Automação de testes frontend para simulação de pagamento de boleto bancário, utilizando **Robot Framework** e **Browser Library**.

---

## Descrição

Este projeto simula a automação de testes em uma página web simples de pagamento de boleto, com validações de:

- Código de barras com 47 ou 48 dígitos  
- Valor maior que zero  
- Data de vencimento obrigatória  

O objetivo é validar tanto os fluxos de sucesso quanto os erros de preenchimento, garantindo a qualidade da interface.

---

## Tecnologias usadas

- [Robot Framework](https://robotframework.org/)  
- [Browser Library](https://marketsquare.github.io/robotframework-browser/)  
- HTML5, JavaScript (para a página de teste)  
- Python (para executar os testes)

---

## Como rodar

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/boleto-tester.git
cd boleto-tester

Crie e ative um ambiente virtual Python:
python -m venv venv
# Windows
venv\Scripts\activate
# Linux/macOS
source venv/bin/activate

Instale as dependências:
pip install -r requirements.txt
rfbrowser init

Execute os testes:
robot tests/test_pagamento_boleto.robot

Estrutura do projeto
boleto-tester/
│
├── pages/                  # Página HTML simulando o boleto
│   └── pagamento.html
├── resources/              # Keywords do Robot Framework
│   └── PagamentoPage.robot
├── tests/                  # Casos de teste automatizados
│   └── test_pagamento_boleto.robot
├── requirements.txt        # Dependências do Python
├── README.md               # Este arquivo
└── .gitignore              # Arquivo para ignorar arquivos no Git

Resultados
Os relatórios gerados após execução dos testes ficam disponíveis na pasta output e podem ser visualizados no navegador.


