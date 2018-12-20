class CadastrarComprador < SitePrism::Page

  set_url $base_urls['home_incricao_cadastro']

  #DadosPessoais
  element :nome_completo, "input[name='name']"
  element :dado_cpf, "input[name='cpf']"
  element :dado_email, "input[name='email']"
  element :confirmar_email, "input[name='confirm-email']"
  element :data_nasc, "input[name='birthdate']"
  element :fone_principal, "input[name='phone-number']"
  element :seta_select_sexo, "b[class=\"chosen-btn-icon\"]"
  element :opcao_sexo_masculino, :xpath, "//li[text()=\"Masculino\"]"
  element :proximo_btn, "button[class='btn buyer-register__btn-validate btn--1']"

  #Endereço
  element :cep_field, '#zipcode'
  element :numero_field, '#number'
  element :proximo_button, "button[class='btn btn--1 buyer-register__btn-validate']"

  #Senha
  element :senha_field, "input[name='password']"
  element :confirmsenha_field, "input[name='password-confirmation']"
  element :avançar_btn, "button[class='btn btn--1 buyer-register__btn-validate']"

  #MétodosdePagamento
  element :cartaocredito_field, "input[name='card-number-1']"
  element :cartaocod_field, "input[name='card-cod-1']"
  element :cartaovalidade_field, "input[name='card-validity-1']"
  element :cartaonome_field, "input[name='card-name-1']"
  elements :concordar_checkbox, "div[class='checkbox__fake-btn']"
  element :salvar_button, "button[class='btn btn--1 card-save']"
  element :submit_button, "button[class='btn btn--1']"

  #ValidarMSG
  element :validacao, "h2[class='section__title register-success__title']"
 

  #MétodoDadosPessoais
  def preencher_dados(email,confirmar,telefone)
  	dado_email.set(email)
  	confirmar_email.set(confirmar)
  	fone_principal.set(telefone)
  end

   #MétodoSenha
  def preencher_senha(senha,csenha)
    senha_field.set(senha)
    confirmsenha_field.set(csenha)
    avançar_btn.click
  end

end