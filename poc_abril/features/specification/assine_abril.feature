#language: pt

Funcionalidade: Assine Abril

  @assine_abril
  Cenário: Validar presença dos produtos Assine Abril na Home
    Dado que eu esteja na home do site
    Quando localizar assine abril na home
    Então valido os produtos presentes com sucesso
