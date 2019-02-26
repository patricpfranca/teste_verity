Dado("que eu acessei a home page da Verity Group") do
  @acessa_page.acessa
end

Quando("eu clicar na opção de menu “Contato”") do
  find("div [data-v-2536610e=''][href='/contato']").click
end

Quando("preencher os campos Empresa, Nome, Email, Telefone, Assunto e Mensagem") do
  @contato_page.preencher_contato
end

Quando("clicar no botão “Enviar”") do
  find('div button.submit').click
end

Então("o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso.") do
  sleep 5
  expect(page).to have_content('Sua mensagem foi enviado com sucesso!')
end
