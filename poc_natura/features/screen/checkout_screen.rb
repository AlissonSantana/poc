require 'calabash-android/abase'
require 'calabash-android/operations'
require 'timeout'

class CheckoutScreen < Calabash::ABase

  ###  Metodos unificados ###

  def definir_endereco
    encontrar_botao_endereco
    adicionar_endereco_entrega
    definir_endereco_entrega
    salvar_endereco_entrega
  end

  def finalizar_compra_por_boleto
    encontrar_opcao_boleto
    aguardar_carregamento
    selecionar_opcao_boleto
    encontrar_botao_finalizar_compra
    finalizar_compra
  end

    ###  Metodos  ###

  def encontrar_botao_endereco
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    Timeout::timeout(15) do
      until element_exists("* id:'btAddAddress'")
        descer_tela(1)
      end
    end
  end

  def adicionar_endereco_entrega
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'txTTitle'"], :timeout => 20)
    wait_for_elements_exist(["* id:'btAddAddress'"], :timeout => 10)
    touch("* id:'btAddAddress'")
  end

  def definir_endereco_entrega
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'cbAddress'"], :timeout => 15)
    Timeout::timeout(15) do
      until element_exists("* id:'btSave'")
        touch("* id:'cbAddress'")
      end
    end
  end

  def salvar_endereco_entrega
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'btSave'"], :timeout => 10)
    touch("* id:'btSave'")
  end

  def encontrar_opcao_boleto
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'txAddress'"], :timeout => 10)
    Timeout::timeout(10) do
      until element_exists("* text:'Boleto'")
        descer_tela(1)
      end
    end
  end

  def selecionar_opcao_boleto
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist("* text:'Boleto'", :timeout => 10)
    touch("* text:'Boleto'")
  end

  def encontrar_botao_finalizar_compra
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    Timeout::timeout(10) do
      until element_exists("* id:'btFinishBuy'")
        descer_tela(1)
      end
    end
  end

  def finalizar_compra
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'btFinishBuy'"], :timeout => 10)
    touch("* id:'btFinishBuy'")
  end

  def validar_mensagem_sucesso
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* text:'Compra realizada com sucesso'"], :timeout => 15)
    expect(element_exists("* text:'Compra realizada com sucesso'")).to be true
    expect(element_exists("* id:'txSubTitle'")).to be true
    puts "Pedido: #{query("* id:'txSubTitle'", :text)}"
  end
end
