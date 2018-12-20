@cadastro @ready
Feature: Cadastro de Usuario

  Scenario: Criar cadastro
    Given que eu esteja na tela de cadastro
    When salvar os dados necessarios para cadastro
    Then validar que um novo usuario foi criado
