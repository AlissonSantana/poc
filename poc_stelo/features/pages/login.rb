class Login < SitePrism::Page
  element :txt_email_cpf, "input[name=username]"
  element :txt_senha, "input[name=password]"
  element :botao_entrar, "button[type=submit][class='btn btn-block btn-submit']"

  set_url $base_urls['home_vendedor']
  set_url $base_urls['home_comprador']

  def efetuar_login(email_cpf, senha)
    txt_email_cpf.set email_cpf
    txt_senha.set senha
    botao_entrar.click
  end

end
