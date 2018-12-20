#Configuração Driver capybara

if $navegador == 'headless'
	Capybara.register_driver :selenium do |app|
		  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['headless', 'window-size=1280x720', 'disable-gpu']})
		  Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
	end
end

if $navegador == 'chrome'
	Capybara.register_driver :selenium do |app|
	  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-fullscreen']})
	  Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
	end
end


if $navegador == 'firefox'
	Capybara.register_driver :selenium do |app|
	  Capybara::Selenium::Driver.new(app, :browser => :firefox)
	end
end


# Set Driver padrão para execução
Capybara.default_driver = :selenium

# Timeout padrão de 15s
Capybara.default_max_wait_time = 15