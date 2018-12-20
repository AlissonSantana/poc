Quando(/^preencher os dados necessários para efetuar o cadastro e inserir um cartão inválido$/) do
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
	@cartao = IncluirCartao.new
	massa = @cartao.gerar_cartao
	numero_card = massa['Cartao']
	cod_carde = massa['CodigodeSegurança']
	validade_card = massa['Validade']		
	@cartao.preencher_cartao(numero_card, cod_carde, validade_card, "Joao Doria")
	
end	

Então(/^a pagina deve apresentar uma mensagem de erro "([^"]*)"$/) do |messagem|
  print expect(page).to have_content(messagem)

end