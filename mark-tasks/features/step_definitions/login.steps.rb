Quando("faço login com {string} e {string}") do |email, senha|
    visit "https://marktasks.herokuapp.com/login"

    @email = email

    find('input[placeholder="example@gmail.com"]').set email
    find('input[type="password"]').set senha
    find('button[id="btLogin"]').click
    sleep 5
  end
  
  Então("sou autenticado com sucesso") do
    user_menu = find('a[href="/user_settings dropdown-toggle"]')
    expect(user_menu.text).to eql @email
  end
  
  Então("vejo meu painel de atividades") do
    titulo_pagina = find('.header-title')
    expect(titulo_pagina.text).to eql "Painel de Atividades\nTodas as minhas tarefas"
  end
  
  Então("devo ver a mensagem {string}") do |mensagem|
    alerta_login = find('.alert-login')
    expect(alerta_login.text).to eql mensagem
  end