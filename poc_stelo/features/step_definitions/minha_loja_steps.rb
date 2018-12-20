
Quando(/^acessar a area de venda da minha loja$/) do
  step "efetuar login no portal do vendedor"
  @home_page = Home.new
  @home_page.wait_for_menu_list
  @home_page.menu_list.first.hover
  @home_page.wait_for_opcao_minha_loja
  @home_page.opcao_minha_loja.click
  @home_page.opcao_minhas_vendas.first.click
end

Quando(/^realizar uma busca com o número do pedido$/) do
  @minhas_vendas_page = MinhasVendas.new
  @minhas_vendas_page.wait_for_campo_buscar
  @minhas_vendas_page.campo_buscar.set(@id_pedido)
  @minhas_vendas_page.botao_filtrar.click
  @minhas_vendas_page.lista_pedidos.click
end
