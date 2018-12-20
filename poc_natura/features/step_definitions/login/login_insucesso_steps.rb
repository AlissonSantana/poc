require 'calabash-android/calabash_steps'

When(/^realizar o login com os dados invalidos$/) do
  page(LoginScreen).realizar_login_insucesso("automacao@natura.com.br","senha123456")
end

Then(/^e exibida uma mensagem de erro$/) do
  page(LoginScreen).validar_login_insucesso
  contem_texto('E-mail ou senha fornecido está incorreto')
end
