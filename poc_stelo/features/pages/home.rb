class Home < SitePrism::Page
	elements :menu_list, "li[class=list__item]"
	element :opcao_minha_loja, :xpath, '//span[text()="MINHA LOJA"]'
	elements :opcao_minhas_vendas, :xpath, '//a[text()="Minhas vendas"]'
end
