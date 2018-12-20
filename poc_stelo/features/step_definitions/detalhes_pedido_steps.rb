Então(/^verifico os detalhes da compra$/) do
  expect(DetalhesPedido.new.detalhes_pedido.has_content?(@id_pedido)).to eq(true)
end
