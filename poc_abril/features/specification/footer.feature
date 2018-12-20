#language: pt

Funcionalidade: Footer

  @footer
  Cenário: Validar presença das referência no Footer
    Dado que eu esteja na home do site
    Quando localizar o footer na home
    Então valido os referências presentes no footer com sucesso
