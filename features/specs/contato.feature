#language: pt

Funcionalidade: Entrando em contato
  Para que eu possa enviar uma mensagem.

  Contexto: Contato
    Dado que eu acessei a home page da Verity Group

  Cenário: Enviando uma mensagem
    Quando eu clicar na opção de menu “Contato”
    E preencher os campos Empresa, Nome, Email, Telefone, Assunto e Mensagem
    E clicar no botão “Enviar”
    Então o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso.
