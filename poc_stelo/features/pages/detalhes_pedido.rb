
class DetalhesPedido < SitePrism::Page

  element :detalhes_pedido, 'div[class^=order-details__seller]'
	element :titulo_pagina, "h2[class=section__title]/*[text()='Detalhes do pedido']"

end
