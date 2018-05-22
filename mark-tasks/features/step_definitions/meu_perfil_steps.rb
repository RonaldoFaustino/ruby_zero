Dado("que estou autenticado com {string} e {string}") do |email, senha|
    
    @login.load
    @login.logar(email, senha)

    sleep 5
  end
  
  Dado("acesso meu Perfil") do
    @nav.menu_usuario.click
    @nav.meu_perfil.click
  end
  
  Quando("completo meu cadastro com {string} e {string}") do |empresa, cargo|
    @perfil.atualiza(empresa, cargo)
    
  end
  
  Então("vejo a mensagem {string}") do |mensagem|
    expect(@perfil.formulario).to have_content mensagem
  end