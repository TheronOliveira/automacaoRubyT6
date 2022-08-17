Dado('que eu informe a url da página home do projeto Qa.Coders') do
  home.load
end

Entao('deve ser visualizada a mensagem {string}') do |text|
  home.validate_text(text)
end

Quando('clico no menu {string}') do |sobre_nos|
  home.click_button
end

Entao('devo visualizar a informação {string}') do |text|
  home.validate_text(text)
end

