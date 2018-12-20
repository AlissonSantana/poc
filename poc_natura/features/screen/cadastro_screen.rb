require 'calabash-android/abase'
require 'calabash-android/operations'

class CadastroScreen < Calabash::ABase

    ###  Metodos unificados ###

  def realizar_cadastro(nome,cpf,email,senha,confirm_senha,cep,nascimento,tel)
    preencher_nome(nome)
    preencher_cpf(cpf)
    scroll_para_baixo(1)
    preencher_email(email)
    preencher_senha(senha)
    preencher_confirmacao_senha(confirm_senha)
    scroll_para_baixo(1)
    preencher_cep(cep)
    preencher_data_nascimento(nascimento)
    selecionar_genero
    scroll_para_baixo(1)
    preencher_telefone(tel)
    aceitar_termos_condicoes
    concordar_termos_condicoes
    salvar_cadastro
  end

    ###  Metodos  ###

  def preencher_nome(nome)
    wait_for_elements_exist(["* id:'edNomeCompleto'"], :timeout => 5)
    touch("* id:'edNomeCompleto'")
    keyboard_enter_text(nome)
    hide_soft_keyboard
  end

  def preencher_cpf(cpf)
    wait_for_elements_exist(["* id:'edCPF'"], :timeout => 5)
    touch("* id:'edCPF'")
    keyboard_enter_text(cpf)
    hide_soft_keyboard
  end

  def preencher_email(email)
    wait_for_elements_exist(["* id:'edEmail'"], :timeout => 5)
    touch("* id:'edEmail'")
    keyboard_enter_text(email)
    hide_soft_keyboard
  end

  def preencher_senha(senha)
    wait_for_elements_exist(["* id:'edSenha'"], :timeout => 5)
    touch("* id:'edSenha'")
    keyboard_enter_text(senha)
    hide_soft_keyboard
  end

  def preencher_confirmacao_senha(confirm_senha)
    wait_for_elements_exist(["* id:'edConfirmeSenha'"], :timeout => 5)
    touch("* id:'edConfirmeSenha'")
    keyboard_enter_text(confirm_senha)
    hide_soft_keyboard
  end

  def preencher_cep(cep)
    wait_for_elements_exist(["* id:'edCEP'"], :timeout => 5)
    touch("* id:'edCEP'")
    keyboard_enter_text(cep)
    hide_soft_keyboard
  end

  def preencher_data_nascimento(nascimento)
    wait_for_elements_exist(["* id:'edDtNascimento'"], :timeout => 5)
    touch("* id:'edDtNascimento'")
    keyboard_enter_text(nascimento)
    hide_soft_keyboard
  end

  def selecionar_genero
    wait_for_elements_exist(["* id:'rdMale'"], :timeout => 5)
    touch("* id:'rdMale'")
  end

  def preencher_telefone(tel)
    wait_for_elements_exist(["* id:'edTelefone'"], :timeout => 5)
    touch("* id:'edTelefone'")
    keyboard_enter_text(tel)
    hide_soft_keyboard
  end

  def aceitar_termos_condicoes
    wait_for_elements_exist(["* id:'ckAcceptTerms'"], :timeout => 5)
    touch("* id:'ckAcceptTerms'")
  end

  def concordar_termos_condicoes
    wait_for_elements_exist(["* id:'btOk'"], :timeout => 5)
    touch("* id:'btOk'")
  end

  def salvar_cadastro
    wait_for_elements_exist(["* id:'btEntrar'"], :timeout => 10)
    touch("* id:'btEntrar'")
  end

  def validar_cadastro(nome_usuario)
    wait_for_elements_exist(["* id:'txFirstName'"], :timeout => 20)
    expect(element_exists("* id:'txFirstName'")).to eq true
    wait_for_elements_exist(["* text:'#{nome_usuario}'"], :timeout => 20)
    expect(element_exists("* text:'#{nome_usuario}'")).to eq true
  end
end
