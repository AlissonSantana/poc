require 'calabash-android/calabash_steps'

Given(/^que eu esteja na tela de login do aplicativo$/) do
  page(HomeScreen).pular_tutorial
  page(HomeScreen).exibir_menu_opcoes
  page(HomeScreen).selecionar_pagina_login
end

When(/^realizar o login no app$/) do
  page(LoginScreen).realizar_login("automacao@natura.com.br","natura123")
end

Then(/^validar o login realizado com sucesso.$/) do
  page(LoginScreen).validar_login_sucesso
  contem_texto('Lucas Paiva')
end
