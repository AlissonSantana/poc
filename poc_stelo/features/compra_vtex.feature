#language: pt

Funcionalidade: Fluxo de Compra Vtex
  Detalhes

@compra_vtex
Cenário: Validar pedido de compra de pessoa física nos detalhes do pedido
  Dado que efetue uma compra vtex pelo serviço
  Então a compra é efetuada com sucesso gerando o número do pedido
  Quando acessar a area de venda da minha loja
  E realizar uma busca com o número do pedido
  Então verifico os detalhes da compra
