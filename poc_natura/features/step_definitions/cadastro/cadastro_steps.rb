require 'calabash-android/calabash_steps'
require 'pry'
require 'faker'

Given(/^que eu esteja na tela de cadastro$/) do
  page(HomeScreen).pular_tutorial
  page(HomeScreen).acessar_tela_cadastro
end

When(/^salvar os dados necessarios para cadastro$/) do
  @nome = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
  @cpf = cpf_generate
  @email = Faker::Internet.email
  @senha = Faker::Internet.password
  @cep = Faker::Number.number(8)
  @nascimeto = "01011990"
  @tel = Faker::Number.number(11)
  page(CadastroScreen).realizar_cadastro(@nome,@cpf,@email,@senha,@senha,@cep,@nascimeto,@tel)
end

Then(/^validar que um novo usuario foi criado$/) do
  page(CadastroScreen).validar_cadastro(@nome)
end
