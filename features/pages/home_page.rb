class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :txt_Title, 'div[class="title"]'
    element :btn_Sobre_Nos, '//a[contains(text(),"Sobre nós")]'
    element :btn_Depoimentos, '//a[contains(text(), "Depoimentos")]'
    element :btn_Parceiros, '//a[contains(text(), "Parceiros")]'
    element :btn_Fale_Conosco, '//a[contains(text(), "Fale Conosco")]'

    set_url '/'
    
    def validate_text(text)
        el_text = txt_Title
      
        if el_text.text.eql?(text) != true
            raise "Expect element: #{text}, but returned: #{el_text.text}"
        end
    end

    def click_button
        btn_Sobre_Nos.click()
    end
end