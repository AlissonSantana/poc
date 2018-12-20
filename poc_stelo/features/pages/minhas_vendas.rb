class MinhasVendas < SitePrism::Page
	element :campo_buscar, "input[id=search]"
	element :botao_filtrar, :xpath, "//span[text()=\"FILTRAR\"]"
	element :lista_pedidos, 'tbody tr'

	def encontra_pedido_id(id_pedido)
		find(:xpath,'b[title=\"#{id_pedido}\"]')
	end

end
