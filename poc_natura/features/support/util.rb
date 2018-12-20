require 'calabash-android/management/adb'
require 'calabash-android/operations'
require 'calabash-android/abase'

def scroll_para_baixo(quantity)
  quantity.times do
    scroll("ScrollView", :down)
  end
end

def scroll_direita(quantity)
  quantity.times do
    perform_action('drag', 90, 0, 50, 50, 50)
  end
end

def validar_texto(*args)
  args.each do |text|
    wait_for_elements_exist(["* text:'#{text}'"], :timeout => 20)
  end
end

def contem_texto(params)
  begin
    wait_for_elements_exist(["* {text CONTAINS '#{params}'}"], :timeout => 10)
  rescue
    raise "Não foi possível validar a criação do usuário!"
  end
end

def aguardar_carregamento
  sleep 1
end

def descer_tela(quantity)
  quantity.times do
    perform_action('drag', 50, 50, 90, 40, 20)
  end
end

def cpf_generate
  digits = []
  9.times { digits << rand(9) }
  2.times { digits << verification_digit_for(digits) }
  digits.join
end

private

def verification_digit_for(known_digits)
  i = 1
  sums = known_digits.reverse.collect do |digit|
    i += 1
    digit * i
  end

  verification_digit = 11 - sums.inject(0) { |sum, item| sum + item } % 11
  verification_digit < 10 ? verification_digit : 0
end
