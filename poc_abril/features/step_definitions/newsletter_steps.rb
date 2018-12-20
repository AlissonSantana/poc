Quando("localizar newsletter na home") do
  HomeVeja.new.click_newsletter.click
end

Então("valido que a newsletter é apresentado com sucesso") do
  HomeVeja.new.preencher_newsletter(Faker::Name.first_name, Faker::Internet.email)
  expect(HomeVeja.new.msg_newsletter_txt.text.split("done").last).to eq($validacao['newsletter']['msg_sucesso'])
  puts HomeVeja.new.msg_newsletter_txt.text.split("done").last
end
