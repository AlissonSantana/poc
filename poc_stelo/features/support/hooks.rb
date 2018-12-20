After do |scenario|
  if $screenshot == 'true'
    sufix = ('falha' if scenario.failed?) || 'sucesso'
    name = scenario.name.tr(' ', '_').downcase
    page.save_screenshot("relatorios/#{sufix}-#{name}.png")
    embed("relatorios/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
    Capybara.reset_sessions!
  end
end
