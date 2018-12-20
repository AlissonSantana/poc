require 'calabash-android/abase'
require 'calabash-android/operations'

class LoginScreen < Calabash::ABase

  ###  Metodos unificados ###

  def realizar_login(email,senha)
    preencher_email_login(email)
    preencher_senha_login(senha)
    entrar_login
  end

  def realizar_login_insucesso(email,senha_insucesso)
    preencher_email_login(email)
    preencher_senha_login_insucesso(senha_insucesso)
    entrar_login
  end

  ###  Metodos  ###

  def preencher_email_login(email)
    wait_for_elements_exist(["* id:'edEmail'"], :timeout => 10)
    touch("* id:'edEmail'")
    keyboard_enter_text(email)
    hide_soft_keyboard
  end

  def preencher_senha_login(senha)
    wait_for_elements_exist(["* id:'edPassword'"], :timeout => 10)
    touch("* id:'edPassword'")
    keyboard_enter_text(senha)
    hide_soft_keyboard
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
  end

  def preencher_senha_login_insucesso(senha_insucesso)
    wait_for_elements_exist(["* id:'edPassword'"], :timeout => 10)
    touch("* id:'edPassword'")
    keyboard_enter_text(senha_insucesso)
    hide_soft_keyboard
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
  end

  def entrar_login
    wait_for_elements_exist(["* id:'btEntrar'"], :timeout => 10)
    touch("* id:'btEntrar'")
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
  end

  def validar_login_sucesso
    wait_for_element_does_not_exist("* id:'progress_indefinite'", :timeout => 15)
    wait_for_elements_exist(["* id:'txFirstName'"], :timeout => 15)
    expect(element_exists("* id:'txFirstName'")).to eq true
  end

  def validar_login_insucesso
    wait_for_elements_exist(["* id:'txTitle'"], :timeout => 15)
    expect(element_exists("* id:'txTitle'")).to eq true
  end

end
