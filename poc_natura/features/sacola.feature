@ready
Feature: Sacola
  @sacola
  Scenario: Comprar produtos adicionados a sacola
    Given que esteja na tela inicial do aplicativo
    When escolher o departamento e o produto desejado
    And realizar o login apos selecionar o produto
    When definir o endereco de entrega
    And finalizar a compra do pedido por boleto
    Then e exibido a mensagem de compra finalizada com sucesso
