
Before do
visit 'https://marktasks.herokuapp.com/api/reset/ohnirucse@yahoo.com.br?clean=full' 

@login = LoginPage.new
@nav = NavBar.new
@tasks = TarefasPage.new 
@perfil = PerfilPage.new
end

After ('@logout') do
    @nav.menu_usuario.click
    @nav.sair.click
end