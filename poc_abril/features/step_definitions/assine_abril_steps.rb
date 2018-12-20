Dado("que eu esteja na home do site") do
  @home_veja = HomeVeja.new
  @home_veja.load
  @home_veja.validar_modal
end

Quando("localizar assine abril na home") do
  page.execute_script "window.scrollBy(0,8500)"
  @home_veja.lst_session.click
  @produtos = []
  @home_veja.produtos_assine_abril_text.map do |name|
    @produtos << name.text
  end
end

Então("valido os produtos presentes com sucesso") do
  count = 0
  @produtos.each do |revista|
    expect(revista).to eq $validacao['assine_abril'][count]['revista']
    puts revista
    count = count + 1
  end
end
