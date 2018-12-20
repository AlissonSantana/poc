#language: pt

	Funcionalidade: Perfil Comprador
		Eu como usuario de perfil Comprador
		Quero me cadastar e gerenciar minhas informações no site Stelo
		Para utilizar os serviços e atualizar as informações do meu usuário

	Contexto: 
		Dado que esteja na página de cadastro de comprador
		
		@valido
		Cenário: Cadastar novo comprador cartão válido
			Quando preencher os dados necessários para efetuar o cadastro e inserir um cartão válido
			Então o cadastro do comprador será realizado

		@invalido
		Cenário: Cadastar novo comprador cartão inválido
			Quando preencher os dados necessários para efetuar o cadastro e inserir um cartão inválido
			Então a pagina deve apresentar uma mensagem de erro "Insira um cartão válido."		