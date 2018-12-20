Capybara.register_driver :selenium_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' => ['--start-maximized'] })
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

Capybara.default_driver = :selenium_chrome
Capybara.default_max_wait_time = 15
