Quando("localizar o footer na home") do
	page.execute_script "window.scrollBy(0,10000)"
  HomeVeja.new.click_footer.click
end

Então("valido os referências presentes no footer com sucesso") do
  count = 0
  HomeVeja.new.lst_footer_references_abril.each do |reference|
    expect(reference.text).to eq $validacao['referencias'][count]['referencia']
    puts reference.text
    count = count + 1
  end
end
