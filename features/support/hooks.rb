Before do
  @acessa_page = Acessa.new
  @contato_page = Contato.new
end

After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome = nome.tr(' ', '_').downcase!

  shot = `log/screenshots/#{nome}.png`

  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique para visualizar o print')
end