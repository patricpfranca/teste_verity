class Contato
  include Capybara::DSL

  def preencher_contato
    find("div input[name='empresa']").set('Teste')
    find("div input[name='nome']").set('Patric Pereira')
    find("div input[name='email']").set('patric.pereirafranca@gmail.com')
    find("div input[name='telefone']").set('11963659778')
    combo = find('div select')
    combo.find('option', text: 'Dúvidas').select_option
    find("div textarea[name='mensagem']").set('Teste realizado com sucesso!')
  end
end