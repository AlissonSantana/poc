require 'rspec'
require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'yaml'
require 'capybara/cucumber'
require 'faker'
# require 'webmock/rspec'

# WebMock.disable_net_connect!(allow_localhost: true)

$navegador = ENV['NAV'] || 'chrome'

ambiente = ENV['AMBIENTE'] || 'PROD'

$lista_ambientes = YAML.load_file('./config/environment.yml')

$validacao = YAML.load_file('./features/dados/validacao.yml')

$base_urls = $lista_ambientes[ambiente]


