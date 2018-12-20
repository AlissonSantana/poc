#language: pt

	Funcionalidade: Incluir Cartão
		Eu como usuario de perfil Comprador
		Quero incluir cartões em minha conta
		Para ter mais opções de pagamento

	Contexto: 
		Dado que esteja logado na página do comprador
		Quando acessar a funcionalidade 'Meios de Pagamento' na Página Inicial

		@inc_cartaovalido
		Cenário: Inclusão de Cartão válido
			E preencher os dados do cartão válido
			Então salvar o cartão para ser incluído

		@inc_cartaoinvalido
		Cenário: Inclusão de Cartão inválido
			E preencher os dados do cartão inválido
			Então uma mensagem de erro deve ser exibida