Dado('que eu informe a url da página home do projeto Qa.Coders') do
  home.load
end

Entao('deve ser visualizada a mensagem {string}') do |text|
  home.validate_text(text)
end

Quando('clico no menu Sobre nós') do
  home.click_link
end

Entao('devo visualizar a informação {string}') do |text|
  home.validate_text(text)
end

