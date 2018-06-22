
Before do
visit 'https://marktasks.herokuapp.com/api/reset/ohnirucse@yahoo.com.br?clean=full' 

@login = LoginPage.new
@tasks = TarefasPage.new 
@perfil = PerfilPage.new

page.current_window.resize_to(1280, 800)
end

Before('@auth') do 
    @login.load
    @login.logar('ohnirucse@msn.com', '123456')
end

After ('@logout') do
    @tasks.nav.bye
end

After("@perfil_logout") do
    @perfil.nav.bye
    
end 

After do |scenario|
    nome_cenario = scenario.name.tr(' ' , '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')  
    puts screenshot = "logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência')
end