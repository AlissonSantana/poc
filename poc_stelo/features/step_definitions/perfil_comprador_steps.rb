Dado(/^que esteja na página de cadastro de comprador$/) do
  CadastrarComprador.new.load
end

Quando(/^preencher os dados necessários para efetuar o cadastro e inserir um cartão válido$/) do
	
	#TelaDadosPessoais
	@CadCompr = CadastrarComprador.new
	sleep 2
	@CadCompr.seta_select_sexo.click
	@CadCompr.opcao_sexo_masculino.click
	@CadCompr.nome_completo.set(Faker::Name.name)
	@CadCompr.dado_cpf.set(Faker::CPF.numeric)
	@CadCompr.data_nasc.set((Faker::Base.numerify("200#1990").to_s))
	@CadCompr.preencher_dados('validacaocadastro@outlook.com','validacaocadastro@outlook.com', '11966665555')
	@CadCompr.proximo_btn.click

	#TelaEndereço
	@CadCompr.cep_field.set((Faker::Base.numerify('0103#000').to_s))
    @CadCompr.numero_field.set((Faker::Base.numerify('20#19').to_s))
	@CadCompr.proximo_button.click

	#TelaSenha
	@CadCompr.preencher_senha('Teste12345','Teste12345')
	
	#TelaCartão
	@cartao = CadastrarCartão.new
	massa = @cartao.gerar_cartao
	numero_card = massa['Cartao']
	cod_carde = massa['CodigodeSegurança']
	validade_card = massa['Validade']		
	@cartao.preencher_cartao(numero_card, cod_carde, validade_card, "Diogo Gonçalves Rodrigues")
	@CadCompr.salvar_button.click
	@CadCompr.concordar_checkbox[1].click
    @CadCompr.submit_button.click

end

Então(/^o cadastro do comprador será realizado$/) do
  print expect(page).to have_content("Bem-vindo a Stelo!")
  
end