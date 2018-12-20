require 'rspec'
require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'pry'
require 'cpf_faker'
require 'faker'
require 'site_prism'
require 'httparty'
require 'json'

$ambiente = ENV['ENV'] || 'hml'

$base_urls = YAML.load_file('./config/environment.yml')[$ambiente]

$dados_comprador = YAML.load_file('./config/dados_comprador.yml')[$ambiente]

$dados_vendedor = YAML.load_file('./config/dados_vendedor.yml')[$ambiente]

$screenshot = ENV['SCREENSHOT'] || 'false'
