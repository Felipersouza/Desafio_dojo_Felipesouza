#encoding: UTF-8
Dado("que esteja na home page") do
  visit 'https://www.quintoandar.com.br/'
end

Quando("procurar um Apartamento por uma localidade") do
  fill_in "LocationName", :with => "Paulista/consolação"
  find('#searchbutton').click
end

Quando("aplico os filtros") do
    click_button('Filtrar')
    find('.s14vxbo3-0.kDHltx > div:nth-child(2) > div:nth-child(2) > ul > div > li:first-child > label').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(2) > div:nth-child(2) > ul > div > li:nth-child(2) > label').click
    #first('label[class="sc-iELTvK dCCKdC"]').click
    #driver.findElement(By.cssSelector("input[id='id-19-1']"))
    find('.s14vxbo3-0.kDHltx > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > ul > div> li:nth-child(2) > label').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(3) > div:nth-child(4) > div:nth-child(2) > ul > div> li:nth-child(2) > label').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(3) > div:nth-child(5) > div:nth-child(2) > ul > div> li:nth-child(2) > label').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(3) > div:nth-child(6) > div:nth-child(2) > ul > div> li:nth-child(3) > label').click
    click_button('Aplicar')
end

Entao("valido os filtros") do
  assert_text('1 vagas')
  assert_text('Mobiliado')
  assert_text('Metrô próx.')
  assert_text('1, 2 dorms')
  assert_text('Não aceita')
end

Entao("visualizo os Apartamentos mais proximos") do
  assert_text('Consolação')
end


