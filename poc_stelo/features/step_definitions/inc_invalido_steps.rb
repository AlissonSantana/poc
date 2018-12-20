Quando(/^preencher os dados do cartão inválido$/) do
 	@cartao = IncluirCartao.new
 	@cartao.apelido_field.set("Zé Gotinha")
	massa = @cartao.gerar_cartao
	numero_card = massa['Cartao']
	cod_carde = massa['CodigodeSegurança']
	validade_card = massa['Validade']
	@cartao.preencher_cartao(numero_card, cod_carde, validade_card, "Diogo Gonçalves Rodrigues")
	@cartao.salvar_cartao.click
end

Então(/^uma mensagem de erro deve ser exibida$/) do
	print expect(@cartao.erro_span.text).to eq("Insira um cartão válido.")
end