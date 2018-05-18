Dado("que eu acessei a pagina de cadastro") do
    
    visit 'https://marktasks.herokuapp.com/register'
    sleep 3
  end
  
  Dado("possuo os seguintes dados:") do |table|
    puts @cadastro = table.rows_hash
  end
  
  Quando("faço o meu cadastro") do
      fill_in 'register_name', with: @cadastro['Nome']
      fill_in 'register_email', with: @cadastro['Email']
      #fill_in 'register_password', with: @cadastro['Senha']
      find('input[type=password]').set @cadastro['Senha']
      #click_button 'Cadastrar'
      find('button[type=submit]').click
      sleep 5
  end
  
  Então("sou redirecionado para meu paineil de tarefas") do
    expect(page).to have_content 'Todas as minhas tarefas'
  end

  Então("devo ver uma mensagem de alerta {string}") do |mensagem_alerta|
    expect(page).to have_content mensagem_alerta
    
  end

  #3