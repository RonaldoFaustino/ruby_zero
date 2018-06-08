Dado("que estou autenticado com {string} e {string}") do |email, senha|
    
    @login.load
    @login.logar(email, senha)
    @tasks.wait_for_table_body
    sleep 3
  end
  
  Dado("acesso meu Perfil") do
    #@perfil.load #usuario acessa via url

    #usuario acessa via link do menu superior
    @tasks.nav.menu_usuario.click
    @tasks.nav.meu_perfil.click
  end
  
  Quando("completo meu cadastro com {string} e {string}") do |empresa, cargo|
    @perfil.atualiza(empresa, cargo)
    
  end
  
  Então("vejo a mensagem {string}") do |mensagem|
    expect(@perfil.formulario).to have_content mensagem
  end