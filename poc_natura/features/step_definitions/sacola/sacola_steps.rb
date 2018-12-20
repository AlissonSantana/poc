require 'calabash-android/calabash_steps'
require 'pry'

Given(/^que esteja na tela inicial do aplicativo$/) do
  page(HomeScreen).pular_tutorial
end

When(/^escolher o departamento e o produto desejado$/) do
  descer_tela(2)
  page(HomeScreen).escolher_departamento
  page(HomeScreen).selecionar_produto
end

And(/^realizar o login apos selecionar o produto$/) do
  page(HomeScreen).comprar_produto
  page(HomeScreen).fechar_pedido
  page(LoginScreen).realizar_login("automacao@natura.com.br","natura123")
end

When(/^definir o endereco de entrega$/) do
  page(CheckoutScreen).definir_endereco
end


And(/^finalizar a compra do pedido por boleto$/) do
  page(CheckoutScreen).finalizar_compra_por_boleto
end

Then(/^e exibido a mensagem de compra finalizada com sucesso$/) do
  page(CheckoutScreen).validar_mensagem_sucesso
end
