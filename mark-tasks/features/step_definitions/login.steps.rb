Quando("faço login com {string} e {string}") do |email, senha|
   
    @email = email

    # find('input[placeholder="example@gmail.com"]').set email
    # find('input[type="password"]').set senha
    # find('button[id="btLogin"]').click
    @login.load
    @login.logar(email, senha)

    sleep 5
  end
  
  Então("sou autenticado com sucesso") do
   expect(@tasks.nav.menu_usuario.text).to eql @email
  end
  
  Então("vejo meu painel de atividades") do
    expect(@tasks.titulo.text).to eql "Painel de Atividades Todas as minhas tarefas"
  end
  
  Então("devo ver a mensagem {string}") do |mensagem|
    expect(@login.alert.text).to eql mensagem
  end