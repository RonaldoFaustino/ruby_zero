class LoginPage < SitePrism::Page
    set_url '/'
    element :input_email, 'input[placeholder="example@gmail.com"]'
    element :input_senha, 'input[type="password"]'
    element :button_logar, 'button[id="btLogin"]'
    element :alert, '.alert-login'

    def logar(email, senha)
        input_email.set email
        input_senha.set senha
        button_logar.click
    end
end



#site_prism page_objet