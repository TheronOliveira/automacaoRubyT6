Dado('que eu informe a url da página home do projeto Qa.Coders') do
  home.load
end

Entao('deve ser visualizada a mensagem {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end
