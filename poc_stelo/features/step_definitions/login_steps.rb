
Dado(/^efetuar login no portal do vendedor$/) do
  @login_page = Login.new
  @login_page.load
   aguardar_mudanca_tela_por_titulo(1, 'Login - Stelo')
  @login_page.efetuar_login($dados_vendedor[0]['email'], ENV['SENHA'])
end

Dado(/^que esteja logado na página do comprador$/) do
  @login = Login.new
  @login.load
  @login.efetuar_login($dados_comprador[0]['email'], ENV['SENHA'])
 end