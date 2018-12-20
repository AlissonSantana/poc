require 'calabash-android/abase'
require 'calabash-android/operations'
require 'pry'

class HomeScreen < Calabash::ABase

  ###  Metodos unificados ###

  def acessar_tela_cadastro
    exibir_menu_opcoes
    selecionar_pagina_login
    entrar_tela_cadastro
  end

  ###  Metodos  ###

  def pular_tutorial
    begin
      wait_for_elements_exist("* id:'btSkip'", :timeout => 15)
      touch("* id:'btSkip'")
    rescue
    end
  end

  def exibir_menu_opcoes
    wait_for_elements_exist("android.widget.ImageButton index:0", :timeout => 15)
    Timeout::timeout(15) do
      until element_exists("* id:'rlNotLoggged'") == true
        touch("android.widget.ImageButton index:0")
      end
    end
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
  end

  def selecionar_pagina_login
    wait_for_elements_exist(["* id:'rlNotLoggged'"], :timeout => 10)
    touch("* id:'rlNotLoggged'")
  end

  def entrar_tela_cadastro
    wait_for_elements_exist(["* id:'btQueroCadastrar'"], :timeout => 10)
    touch("* id:'btQueroCadastrar'")
  end

  def escolher_departamento
    3.times do
    perform_action('drag', 90, 0, 50, 50, 50)
    end
  end

  def selecionar_produto
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'ivProduct'"], :timeout => 10)
    touch("* id:'ivProduct'")
  end

  def comprar_produto
    wait_for_elements_exist(["* id:'btBuyFloat'"], :timeout => 10)
    touch("* id:'btBuyFloat'")
  end

  def aguardar_carregamento_banner
    wait_for_elements_exist(["* id:'daimajia_slider_image'"], :timeout => 10)
  end

  def fechar_pedido
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    if element_exists("* id:'btFinishBuyFloat'") == false
      Timeout::timeout(10) do
        until element_exists("* id:'btFinishBuyFloat'")
          descer_tela(1)
        end
      end
    end
    wait_for_elements_exist(["* id:'btFinishBuyFloat'"], :timeout => 20)
    touch("* id:'btFinishBuyFloat'")
  end

  def validar_texto(*args)
    args.each do |text|
      wait_for_elements_exist(["* text:'#{text}'"], :timeout => 10)
    end
  end
end
