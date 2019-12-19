#encoding: UTF-8
Dado("que esteja na home page") do
  visit 'https://www.quintoandar.com.br/'
end

Quando("procurar um Apartamento por uma localidade") do
  find('div:nth-child(1) > div > div.MuiFormControl-root.MuiFormControl-fullWidth > div > input').set 'São Paulo'
  find('#ChIJ0WGkg4FEzpQRrlsz_whLqZs').click
  find('form > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-12.MuiGrid-grid-md-6 > div > div.MuiFormControl-root.MuiFormControl-fullWidth > div > input').set 'Consolação'
  find('#\37 2').click
end

Quando("aplico os filtros") do
    find('.MuiButtonBase-root.MuiButton-root.MuiButton-contained.sc-brqgnP.dBgFwg.MuiButton-containedPrimary').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(2) > div:nth-child(2) > ul > div > li:first-child > label').click
    find('.s14vxbo3-0.kDHltx > div:nth-child(2) > div:nth-child(2) > ul > div > li:nth-child(2) > label').click
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


