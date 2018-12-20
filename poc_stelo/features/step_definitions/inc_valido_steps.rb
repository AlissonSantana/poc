Quando(/^acessar a funcionalidade 'Meios de Pagamento' na Página Inicial$/) do
  @inc_cartaovalido = IncluirCartao.new
  @inc_cartaovalido.incluir_btn.click
end

Quando(/^preencher os dados do cartão válido$/) do
	@inc_cartaovalido.apelido_field.set("Zé Gotinha")
 	@cartao = CadastrarCartão.new
	massa = @cartao.gerar_cartao
	numero_card = massa['Cartao']
	cod_carde = massa['CodigodeSegurança']
	validade_card = massa['Validade']		
	@cartao.preencher_cartao(numero_card, cod_carde, validade_card, "Diogo Gonçalves Rodrigues")
end

Então(/^salvar o cartão para ser incluído$/) do
  @cartao.salvar_cartao.click
end