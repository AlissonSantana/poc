#language: pt

Funcionalidade: Newsletter

  @newsletter
  Cenário: Validar presença do Newsletter na Home
    Dado que eu esteja na home do site
    Quando localizar newsletter na home
    Então valido que a newsletter é apresentado com sucesso
