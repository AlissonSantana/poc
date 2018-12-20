#language: pt
#utf - 8

@cartoes
Funcionalidade: Cadastrar Cartões
	Eu como comprador Stelo
	Quero cadastrar meus cartões de crédito em minha carteira de compras
	
Contexto: Login para cadastro dos cartões
	Dado que esteja logado na página do comprador
	
	@BRA	
	Cenário: Cadastro com 4 cartões Bradesco
		Quando efetuo o cadastro de 4 cartões "BRA"
		Então valido se os 4 cartões BRA foram cadastrado com sucesso

	@BB
	Cenário: Cadastro com 7 cartões Banco do Brasil
		Quando efetuo o cadastro de 7 cartões "BB"
		Então valido se os 7 cartões BB foram cadastrado com sucesso


		
