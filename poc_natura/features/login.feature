@login @ready
Feature: Login

  @login_sucesso
  Scenario: Login com sucesso na aplicativo
    Given que eu esteja na tela de login do aplicativo
    When realizar o login no app
    Then validar o login realizado com sucesso.

  @login_insucesso
  Scenario: Login com insucesso na aplicativo
    Given que eu esteja na tela de login do aplicativo
    When realizar o login com os dados invalidos
    Then e exibida uma mensagem de erro
