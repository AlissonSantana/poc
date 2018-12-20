Quando(/^efetuo o cadastro de (\d+) cartões "([^"]*)"$/) do |quant_cartoes, arg2|
#Quando(/^efetuo o cadastro de (\d+) cartões BRA$/) do |quant_cartoes|
	
	@carteira = MinhaCarteira.new
	@carteira.wait_for_meio_de_pagamento_btn
	@carteira.meio_de_pagamento_btn.click

	for i in 1..quant_cartoes.to_i
		@cartao = CadastrarCartão.new
		massa = @cartao.gerar_cartao
		numero_card = massa['Cartao']
		cod_carde = massa['CodigodeSegurança']
		validade_card = massa['Validade']
		@cartao.preencher_cartao(numero_card, cod_carde, validade_card, "Diogo Gonçalves Rodrigues")
		@cartao.salvar_cartao.click
	end

	@carteira.avatar_button.click
	@carteira.logout.click


end

Então(/^valido se os (\d+) cartões BRA foram cadastrado com sucesso$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end

Então(/^valido se os (\d+) cartões BB foram cadastrado com sucesso$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end