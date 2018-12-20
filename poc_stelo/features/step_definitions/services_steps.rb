
Dado(/^que efetue uma compra vtex pelo serviço$/) do
  json_body_payment = JSON.parse(File.read('./fixtures/pay_load.json'))
  @resposta_compra = Payments.new.efetuar_compra(json_body_payment)
end

Então(/^a compra é efetuada com sucesso gerando o número do pedido$/) do
  expect(@resposta_compra.code).to eq 200
  @id_pedido = @resposta_compra['orderId']
end
