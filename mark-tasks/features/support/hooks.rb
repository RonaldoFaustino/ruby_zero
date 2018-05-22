
Before do
visit 'https://marktasks.herokuapp.com/api/reset/ohnirucse@yahoo.com.br?clean=full' 

@login = LoginPage.new
@tasks = TarefasPage.new 
@perfil = PerfilPage.new
end

After ('@logout') do
    @tasks.nav.bye
end

After("@perfil_logout") do
    @perfil.nav.bye
    
end 