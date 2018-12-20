class CadastrarCartão < SitePrism::Page
	element :num_cartao, "input[id='card-number-1']"
	element :cod_seguranca_cartao, "input[id='card-cod-1']"
	element :validade_cartao, "input[id='card-validity-1']"
	element :nome_cartao, "input[id='card-name-1']"
	element :salvar_cartao, "button[class='btn btn--1 card-save']"


	def gerar_cartao
		num = Random.rand(1...20) 
		cartao_massa = "Cartao#{num}"
		return YAML.load_file('./fixtures/massa_card.yml')[cartao_massa]

	end


	def preencher_cartao(numero_card, cod_card, validade_card, nome_card)
		num_cartao.set(numero_card)
		cod_seguranca_cartao.set(cod_card)
		validade_cartao.set(validade_card)
		nome_cartao.set(nome_card)
	end

end



class MinhaCarteira < SitePrism::Page
	element :meio_de_pagamento_btn, "a[class='register__btn btn-circle btn-circle--1']"
	element :avatar_button, "div[class='avatar__mask sprite sprite--avatar-mask']"
	element :logout,  "a[class='list__item-inner list__text js-logout']"

end