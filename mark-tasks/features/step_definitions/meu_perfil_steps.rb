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


  #Upload

  Dado('que eu tenho uma foto muito bonita') do
    # @minha_foto = File.join(Dir.pwd, '/features/support/fixtures/foto1.png')
    @minha_foto = File.join(Dir.pwd, 'features/support/fixtures/bin.jpg')
  end
  
  Quando('faço o upload da mina foto') do
    @perfil.upload(@minha_foto)
  end
  
  Então('devo ver a mensagem de upload com o texto {string}') do |mensagem|
    expect(@perfil.formulario).to have_content mensagem
  end